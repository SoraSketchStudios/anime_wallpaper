part of 'discover_bloc.dart';

@immutable
abstract class DiscoverEvent {}

class OnGetDiscoverCharacter extends DiscoverEvent {}

class OnClickItemDiscoverCharacter extends DiscoverEvent {
  final CharacterModel characterModel;
  final BuildContext context;

  OnClickItemDiscoverCharacter(this.characterModel, this.context);
}
