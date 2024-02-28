part of 'search_bloc.dart';

@immutable
abstract class SearchEvent {}

class OnSearch extends SearchEvent {
  final String characterNames;
  OnSearch(this.characterNames);
}

class OnReset extends SearchEvent {
  OnReset();
}
