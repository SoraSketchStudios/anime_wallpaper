part of 'image_character_bloc.dart';

@immutable
abstract class ImageCharacterState {
  final CharacterModel? characterModel;
  final List<ImageModel>? imageCharacterModels;

  const ImageCharacterState(this.characterModel, this.imageCharacterModels);
}

class ImageCharacterInitial extends ImageCharacterState {
  const ImageCharacterInitial(super.characterModel, super.imageCharacterModels);
}

class ImageCharacterLoading extends ImageCharacterState {
  const ImageCharacterLoading(super.characterModel, super.imageCharacterModels);
}

class ImageCharacterDone extends ImageCharacterState {
  const ImageCharacterDone(super.characterModel, super.imageCharacterModels);
}

class ImageCharacterError extends ImageCharacterState {
  const ImageCharacterError(super.characterModel, super.imageCharacterModels);
}
