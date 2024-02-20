part of 'popular_bloc.dart';

@immutable
abstract class PopularState {
  final List<CharacterModel>? characters;

  const PopularState(this.characters);
}

class PopularInitial extends PopularState {
  const PopularInitial(super.characters);
}

class PopularLoading extends PopularState {
  const PopularLoading(super.characters);
}

class PopularDone extends PopularState {
  const PopularDone(super.characters);
}

class PopularError extends PopularState {
  const PopularError(super.characters);
}
