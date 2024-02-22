part of 'trending_bloc.dart';

@immutable
abstract class TrendingState {
  final List<CharacterModel>? characters;

  const TrendingState(this.characters);
}

class TrendingInitial extends TrendingState {
  const TrendingInitial(super.characters);
}

class TrendingLoading extends TrendingState {
  const TrendingLoading(super.characters);
}

class TrendingDone extends TrendingState {
  const TrendingDone(super.characters);
}

class TrendingError extends TrendingState {
  const TrendingError(super.characters);
}
