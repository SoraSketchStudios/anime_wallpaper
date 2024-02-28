part of 'image_character_bloc.dart';

@immutable
abstract class ImageCharacterEvent {}

class OnClickItemImage extends ImageCharacterEvent {
  final ImageCharacterModels imageCharacterModels;
  final BuildContext context;
  OnClickItemImage(this.imageCharacterModels, this.context);
}

class OnClickDownload extends ImageCharacterEvent {
  final ImageModel imageCharacterModel;

  OnClickDownload(this.imageCharacterModel);
}

class OnClickSetHomeScreen extends ImageCharacterEvent {
  final ImageModel imageCharacterModel;
  final BuildContext context;
  final Function onDone;
  OnClickSetHomeScreen(this.imageCharacterModel, this.context, this.onDone);
}

class OnClickSetLockScreen extends ImageCharacterEvent {
  final ImageModel imageCharacterModel;
  final BuildContext context;
  final Function onDone;
  OnClickSetLockScreen(this.imageCharacterModel, this.context, this.onDone);
}

class OnClickSetBothScreen extends ImageCharacterEvent {
  final ImageModel imageCharacterModel;
  final BuildContext context;
  final Function onDone;

  OnClickSetBothScreen(this.imageCharacterModel, this.context, this.onDone);
}

class OnReloadImageCharacter extends ImageCharacterEvent {}

class OnGetImagesCharacter extends ImageCharacterEvent {}

class OnInitBlocImageCharacter extends ImageCharacterEvent {
  final CharacterModel characterModel;

  OnInitBlocImageCharacter(this.characterModel);
}
