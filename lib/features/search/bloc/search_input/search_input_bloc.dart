import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'search_input_event.dart';
part 'search_input_state.dart';

class SearchInputBloc extends Bloc<SearchInputEvent, SearchInputState> {
  SearchInputBloc() : super(const SearchInputState()) {
    on<SearchInputInitialLoad>(_onSearchInputInitialLoad);
  }

  void _onSearchInputInitialLoad(
    SearchInputInitialLoad event,
    Emitter<SearchInputState> emit,
  ) {
    return;
  }
}
