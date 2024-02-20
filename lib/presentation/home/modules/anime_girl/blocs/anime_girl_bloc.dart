import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'anime_girl_event.dart';
part 'anime_girl_state.dart';

@lazySingleton
class AnimeGirlBloc extends Bloc<AnimeGirlEvent, AnimeGirlState> {
  final CharacterRepo characterRepo;
  AnimeGirlBloc(this.characterRepo) : super(const AnimeGirlInitial(null)) {
    on<OnGetAnimeGirlCharacter>((event, emit) async {
      emit(const AnimeGirlLoading(null));
      try {
        final characters = await characterRepo.getCharacters();
        emit(AnimeGirlDone(characters));
      } catch (e) {
        emit(const AnimeGirlError(null));
      }
    });

    on<OnClickItemAnimeGirlCharacter>((event, emit) {
      // TODO: implement event handler
    });
  }
}
