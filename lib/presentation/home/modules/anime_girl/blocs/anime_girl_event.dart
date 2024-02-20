part of 'anime_girl_bloc.dart';

@immutable
abstract class AnimeGirlEvent {}

class OnGetAnimeGirlCharacter extends AnimeGirlEvent {}

class OnClickItemAnimeGirlCharacter extends AnimeGirlEvent {
  final CharacterModel characterModel;
  final BuildContext context;

  OnClickItemAnimeGirlCharacter(this.characterModel, this.context);
}
