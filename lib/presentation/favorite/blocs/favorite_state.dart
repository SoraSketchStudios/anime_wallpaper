part of 'favorite_bloc.dart';

@immutable
abstract class FavoriteState {
  final List<CharacterModel>? characters;

  const FavoriteState(this.characters);
}

class FavoriteInitial extends FavoriteState {
  const FavoriteInitial(super.characters);
}

class FavoriteLoading extends FavoriteState {
  const FavoriteLoading(super.characters);
}

class FavoriteDone extends FavoriteState {
  const FavoriteDone(super.characters);
}

class FavoriteError extends FavoriteState {
  const FavoriteError(super.characters);
}
