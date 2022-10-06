part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object?> get props => [];
}

class SearchLoadLatestQuery extends SearchEvent {
  const SearchLoadLatestQuery();
}

class SearchLoadGifs extends SearchEvent {
  const SearchLoadGifs({this.q, this.isFirstLoad = false});

  final String? q;
  final bool isFirstLoad;

  @override
  List<Object?> get props => [q, isFirstLoad];
}

class SearchLoadGifsNextPage extends SearchEvent {
  const SearchLoadGifsNextPage();
}

class SearchLoadGifsRefresh extends SearchEvent {
  const SearchLoadGifsRefresh();
}

class SearchQueryChanged extends SearchEvent {
  const SearchQueryChanged({required this.q});

  final String q;

  @override
  List<Object?> get props => [q];
}
