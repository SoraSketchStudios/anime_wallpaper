part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class OnAddWord extends HomeEvent {
  final String word;
  final BuildContext context;
  final Function onCallback;
  OnAddWord(this.word, this.context, this.onCallback);
}

class OnInitTimes extends HomeEvent {}

class OnDecreaseTime extends HomeEvent {}
