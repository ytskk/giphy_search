part of 'search_input_bloc.dart';

class SearchInputState extends Equatable {
  const SearchInputState({this.q = ''});

  final String q;

  // copy with
  SearchInputState copyWith({
    String? q,
  }) {
    return SearchInputState(q: q ?? this.q);
  }

  @override
  List<Object?> get props => [q];
}
