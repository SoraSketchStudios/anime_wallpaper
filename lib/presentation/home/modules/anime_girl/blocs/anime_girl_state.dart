part of 'anime_girl_bloc.dart';

@immutable
abstract class AnimeGirlState {
  final List<CharacterModel>? characters;

  const AnimeGirlState(this.characters);
}

class AnimeGirlInitial extends AnimeGirlState {
  const AnimeGirlInitial(super.characters);
}

class AnimeGirlLoading extends AnimeGirlState {
  const AnimeGirlLoading(super.characters);
}

class AnimeGirlDone extends AnimeGirlState {
  const AnimeGirlDone(super.characters);
}

class AnimeGirlError extends AnimeGirlState {
  const AnimeGirlError(super.characters);
}
