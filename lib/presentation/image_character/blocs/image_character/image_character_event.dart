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

class OnClickSetHomeScreen extends ImageCharacterEvent {
  final ImageCharacterModel imageCharacterModel;
  final BuildContext context;
  OnClickSetHomeScreen(this.imageCharacterModel, this.context);
}

class OnClickSetLockScreen extends ImageCharacterEvent {
  final ImageCharacterModel imageCharacterModel;
  final BuildContext context;
  OnClickSetLockScreen(this.imageCharacterModel, this.context);
}

class OnClickSetBothScreen extends ImageCharacterEvent {
  final ImageCharacterModel imageCharacterModel;
  final BuildContext context;
  OnClickSetBothScreen(this.imageCharacterModel, this.context);
}

class OnReloadImageCharacter extends ImageCharacterEvent {}

class OnGetImagesCharacter extends ImageCharacterEvent {}

class OnInitBlocImageCharacter extends ImageCharacterEvent {
  final CharacterModel characterModel;

  OnInitBlocImageCharacter(this.characterModel);
}
