part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class OnGetListCharacter extends HomeEvent {}

class OnClickItemCharacter extends HomeEvent {
  final CharacterModel characterModel;
  final BuildContext context;
  OnClickItemCharacter(this.characterModel, this.context);
}

class OnReloadHome extends HomeEvent {}

class OnSearchCharacter extends HomeEvent {
  final String textSearch;
  OnSearchCharacter(this.textSearch);
}
