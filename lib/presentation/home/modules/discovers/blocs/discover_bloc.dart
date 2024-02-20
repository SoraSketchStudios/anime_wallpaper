import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'discover_event.dart';
part 'discover_state.dart';

@lazySingleton
class DiscoverBloc extends Bloc<DiscoverEvent, DiscoverState> {
  final CharacterRepo characterRepo;
  DiscoverBloc(this.characterRepo) : super(const DiscoverInitial(null)) {
    on<OnGetDiscoverCharacter>((event, emit) async {
      emit(const DiscoverLoading(null));
      try {
        final characters = await characterRepo.getCharacters();
        emit(DiscoverDone(characters));
      } catch (e) {
        emit(const DiscoverError(null));
      }
    });

    on<OnClickItemDiscoverCharacter>((event, emit) {
      // TODO: implement event handler
    });
  }
}
