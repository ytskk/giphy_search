part of 'search_bloc.dart';

enum SearchLoadStatus {
  initial,
  inProgress,
  inProgressInitial,
  success,
  error,
}

class SearchState extends Equatable {
  const SearchState({
    this.status = SearchLoadStatus.initial,
    this.gifs,
    this.q = '',
    this.error,
  });

  final SearchLoadStatus status;
  final SearchResponseModel? gifs;
  final String q;
  final Object? error;

  SearchState copyWith({
    SearchLoadStatus? status,
    SearchResponseModel? gifs,
    String? q,
    Object? error,
  }) {
    log('updating query from "${this.q}" to "$q"');
    return SearchState(
      status: status ?? this.status,
      gifs: gifs ?? this.gifs,
      q: q ?? this.q,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [status, gifs, q, error];
}
