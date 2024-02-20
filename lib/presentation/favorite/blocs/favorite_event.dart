part of 'favorite_bloc.dart';

@immutable
abstract class FavoriteEvent {}

class OnGetFavoriteCharacter extends FavoriteEvent {}

class OnClickItemFavoriteCharacter extends FavoriteEvent {
  final CharacterModel characterModel;
  final BuildContext context;

  OnClickItemFavoriteCharacter(this.characterModel, this.context);
}
