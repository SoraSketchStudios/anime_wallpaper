part of 'image_character_bloc.dart';

@immutable
abstract class ImageCharacterEvent {}

class OnClickItemImage extends ImageCharacterEvent {
  final ImageCharacterModels imageCharacterModels;
  final BuildContext context;
  OnClickItemImage(this.imageCharacterModels, this.context);
}

class OnClickDownload extends ImageCharacterEvent {
  final ImageCharacterModel imageCharacterModel;

  OnClickDownload(this.imageCharacterModel);
}

class OnClickSetBackground extends ImageCharacterEvent {
  final ImageCharacterModel imageCharacterModel;
  final BuildContext context;
  OnClickSetBackground(this.imageCharacterModel, this.context);
}

class OnReloadImageCharacter extends ImageCharacterEvent {}

class OnGetImagesCharacter extends ImageCharacterEvent {}

class OnInitBlocImageCharacter extends ImageCharacterEvent {
  final CharacterModel characterModel;

  OnInitBlocImageCharacter(this.characterModel);
}
