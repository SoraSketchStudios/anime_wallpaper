part of 'discover_bloc.dart';

@immutable
abstract class DiscoverState {
  final List<CharacterModel>? characters;

  const DiscoverState(this.characters);
}

class DiscoverInitial extends DiscoverState {
  const DiscoverInitial(super.characters);
}

class DiscoverLoading extends DiscoverState {
  const DiscoverLoading(super.characters);
}

class DiscoverDone extends DiscoverState {
  const DiscoverDone(super.characters);
}

class DiscoverError extends DiscoverState {
  const DiscoverError(super.characters);
}
