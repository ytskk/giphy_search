part of 'search_input_bloc.dart';

abstract class SearchInputEvent extends Equatable {
  const SearchInputEvent();

  @override
  List<Object?> get props => [];
}

class SearchInputChanged extends SearchInputEvent {
  const SearchInputChanged({
    required this.q,
  });

  final String q;

  @override
  List<Object?> get props => [q];
}

class SearchInputInitialLoad extends SearchInputEvent {
  const SearchInputInitialLoad();
}

class SearchInputSave extends SearchInputEvent {
  const SearchInputSave();
}
