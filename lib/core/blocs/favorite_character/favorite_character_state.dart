part of 'favorite_character_bloc.dart';

@immutable
abstract class FavoriteCharacterState {
  final List<FavoriteCharacter> listFavorite;

  const FavoriteCharacterState(this.listFavorite);
}

class FavoriteCharacterInitial extends FavoriteCharacterState {
  const FavoriteCharacterInitial(super.listFavorite);
}
