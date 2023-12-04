part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class OnAddWord extends HomeEvent {
  final String word;
  OnAddWord(this.word);
}
