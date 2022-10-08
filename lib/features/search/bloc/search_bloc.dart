import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:giphy/data/data.dart';
import 'package:giphy/features/features.dart';
import 'package:giphy/main.dart';
import 'package:stream_transform/stream_transform.dart';

part 'search_event.dart';
part 'search_state.dart';

const debounceDuration = Duration(milliseconds: 300);
const throttleDuration = Duration(milliseconds: 300);

EventTransformer<E> restartableDebounce<E>(Duration duration) {
  return (events, mapper) {
    return restartable<E>().call(events.debounce(duration), mapper);
  };
}

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({required GiphyRepositoryInterface giphyRepository})
      : _giphyRepository = giphyRepository,
        super(const SearchState()) {
    on<SearchLoadLatestQuery>(_onLoadLatestQuery);
    on<SearchLoadGifs>(_onSearchLoadGifs);
    on<SearchLoadGifsNextPage>(
      _onSearchLoadGifsNextPage,
      transformer: throttleDroppable(throttleDuration),
    );
    on<SearchLoadGifsRefresh>(_onSearchLoadGifsRefresh);
    on<SearchQueryChanged>(
      _onSearchQueryChanged,
      transformer: restartableDebounce(debounceDuration),
    );
  }

  final GiphyRepositoryInterface _giphyRepository;
  int page = 1;
  static const _perPage = 50;

  FutureOr<void> _onSearchLoadGifs(
    SearchLoadGifs event,
    Emitter<SearchState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          status: event.isFirstLoad
              ? SearchLoadStatus.inProgressInitial
              : SearchLoadStatus.inProgress,
        ),
      );

      log(
        'loading gifs for q: "${event.q}" and page: $page',
        name: 'SearchBloc::_onSearchLoadGifs',
      );
      final res = await _giphyRepository.search(
        apiKey: const String.fromEnvironment('API_KEY'),
        q: event.q ?? state.q,
        limit: _perPage,
        offset: page * _perPage,
      );

      // TODO: refactor
      emit(
        state.copyWith(
          q: event.q ?? state.q,
          status: SearchLoadStatus.success,
          gifs: event.isFirstLoad
              ? res
              : state.gifs?.copyWith(
                    data: [
                      ...state.gifs!.data,
                      ...res.data,
                    ],
                    pagination: res.pagination,
                  ) ??
                  res,
        ),
      );
      page += 1;
      // TODO: should use DI, but ok for now.
      await sharedPreferences.setString('latest_query', state.q);
    } catch (e) {
      emit(
        state.copyWith(
          status: SearchLoadStatus.error,
          error: e,
        ),
      );
    }
  }

  FutureOr<void> _onSearchLoadGifsNextPage(
    SearchLoadGifsNextPage event,
    Emitter<SearchState> emit,
  ) {
    log('loading next page', name: 'SearchBloc::_onSearchLoadGifsNextPage');
    add(const SearchLoadGifs());
  }

  FutureOr<void> _onSearchLoadGifsRefresh(
    SearchLoadGifsRefresh event,
    Emitter<SearchState> emit,
  ) async {
    page = 1;
    add(
      const SearchLoadGifs(
        isFirstLoad: true,
      ),
    );
  }

  FutureOr<void> _onSearchQueryChanged(
    SearchQueryChanged event,
    Emitter<SearchState> emit,
  ) {
    page = 1;
    add(
      SearchLoadGifs(
        q: event.q,
        isFirstLoad: true,
      ),
    );
  }

  FutureOr<void> _onLoadLatestQuery(
    SearchLoadLatestQuery event,
    Emitter<SearchState> emit,
  ) {
    final latestQuery = sharedPreferences.getString('latest_query');
    emit(state.copyWith(q: latestQuery));
  }
}
