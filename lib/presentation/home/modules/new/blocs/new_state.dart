part of 'new_bloc.dart';

@immutable
abstract class NewState {
  final List<CharacterModel>? characters;

  const NewState(this.characters);
}

class NewInitial extends NewState {
  const NewInitial(super.characters);
}

class NewLoading extends NewState {
  const NewLoading(super.characters);
}

class NewDone extends NewState {
  const NewDone(super.characters);
}

class NewError extends NewState {
  const NewError(super.characters);
}
