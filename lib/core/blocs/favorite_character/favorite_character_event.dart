part of 'favorite_character_bloc.dart';

@immutable
abstract class FavoriteCharacterEvent {}

class OnGetFavoriteCharacter extends FavoriteCharacterEvent {}

class OnAddFavoriteCharacter extends FavoriteCharacterEvent {
  final CharacterModel characterModel;

  OnAddFavoriteCharacter(this.characterModel);
}

class OnRemoveFavoriteCharacter extends FavoriteCharacterEvent {
  final String idCharacter;
  final BuildContext context;
  OnRemoveFavoriteCharacter(this.idCharacter, this.context);
}

class OnDeleteAllFavoriteCharacter extends FavoriteCharacterEvent {}
