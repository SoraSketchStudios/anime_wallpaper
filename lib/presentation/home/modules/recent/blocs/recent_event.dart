part of 'recent_bloc.dart';

@immutable
abstract class RecentEvent {}

class OnGetRecentImage extends RecentEvent {}

class OnClickItemRecentImage extends RecentEvent {
  final CharacterModel characterModel;
  final BuildContext context;

  OnClickItemRecentImage(this.characterModel, this.context);
}
