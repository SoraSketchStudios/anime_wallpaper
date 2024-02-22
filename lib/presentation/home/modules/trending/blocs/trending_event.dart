part of 'trending_bloc.dart';

@immutable
abstract class TrendingEvent {}

class OnGetTrendingImage extends TrendingEvent {}

class OnClickItemTrendImage extends TrendingEvent {
  final CharacterModel characterModel;
  final BuildContext context;

  OnClickItemTrendImage(this.characterModel, this.context);
}
