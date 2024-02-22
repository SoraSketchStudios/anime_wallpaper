part of 'new_bloc.dart';

@immutable
abstract class NewEvent {}

class OnGetNewImage extends NewEvent {}

class OnClickItemNewImage extends NewEvent {
  final CharacterModel characterModel;
  final BuildContext context;

  OnClickItemNewImage(this.characterModel, this.context);
}
