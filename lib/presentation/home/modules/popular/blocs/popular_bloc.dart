import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'popular_event.dart';
part 'popular_state.dart';

@lazySingleton
class PopularBloc extends Bloc<PopularEvent, PopularState> {
  final CharacterRepo characterRepo;
  PopularBloc(this.characterRepo) : super(const PopularInitial(null)) {
    on<OnGetPopularCharacter>((event, emit) async {
      emit(const PopularLoading(null));
      try {
        final characters = await characterRepo.getCharacters();
        emit(PopularDone(characters));
      } catch (e) {
        emit(const PopularError(null));
      }
    });

    on<OnClickItemPopularCharacter>((event, emit) {
      // TODO: implement event handler
    });
  }
}
