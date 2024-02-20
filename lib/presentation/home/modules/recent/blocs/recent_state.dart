part of 'recent_bloc.dart';

@immutable
abstract class RecentState {
  final List<CharacterModel>? characters;

  const RecentState(this.characters);
}

class RecentInitial extends RecentState {
  const RecentInitial(super.characters);
}

class RecentLoading extends RecentState {
  const RecentLoading(super.characters);
}

class RecentDone extends RecentState {
  const RecentDone(super.characters);
}

class RecentError extends RecentState {
  const RecentError(super.characters);
}
