part of 'recent_bloc.dart';

@immutable
abstract class RecentEvent {}

class OnGetRecentCharacter extends RecentEvent {}

class OnClickItemRecentCharacter extends RecentEvent {
  final CharacterModel characterModel;
  final BuildContext context;

  OnClickItemRecentCharacter(this.characterModel, this.context);
}
