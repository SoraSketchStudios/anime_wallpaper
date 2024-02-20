part of 'popular_bloc.dart';

@immutable
abstract class PopularEvent {}

class OnGetPopularCharacter extends PopularEvent {}

class OnClickItemPopularCharacter extends PopularEvent {
  final CharacterModel characterModel;
  final BuildContext context;

  OnClickItemPopularCharacter(this.characterModel, this.context);
}
