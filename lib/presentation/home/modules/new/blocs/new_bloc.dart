import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'new_event.dart';
part 'new_state.dart';

@lazySingleton
class NewBloc extends Bloc<NewEvent, NewState> {
  final CharacterRepo characterRepo;
  NewBloc(this.characterRepo) : super(const NewInitial(null)) {
    on<OnGetNewImage>((event, emit) async {
      emit(const NewLoading(null));
      try {
        final characters = await characterRepo.getCharacters();
        emit(NewDone(characters));
      } catch (e) {
        emit(const NewError(null));
      }
    });

    on<OnClickItemNewImage>((event, emit) {
      // TODO: implement event handler
    });
  }
}
