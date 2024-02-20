part of 'home_bloc.dart';

@immutable
abstract class HomeState {
  final List<CharacterModel>? charactersSource;
  final List<CharacterModel>? charactersShow;

  const HomeState(this.charactersSource, this.charactersShow);
}

class HomeInitial extends HomeState {
  const HomeInitial(super.charactersSource, super.charactersShow);
}

class HomeLoading extends HomeState {
  const HomeLoading(super.charactersSource, super.charactersShow);
}

class HomeDone extends HomeState {
  const HomeDone(super.charactersSource, super.charactersShow);
}

class HomeEmptyCharacter extends HomeState {
  const HomeEmptyCharacter(super.charactersSource, super.charactersShow);
}

class HomeError extends HomeState {
  const HomeError(super.charactersSource, super.charactersShow);
}
