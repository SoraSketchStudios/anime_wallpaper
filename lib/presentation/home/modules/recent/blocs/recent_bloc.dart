import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'recent_event.dart';
part 'recent_state.dart';

@lazySingleton
class RecentBloc extends Bloc<RecentEvent, RecentState> {
  final CharacterRepo characterRepo;
  RecentBloc(this.characterRepo) : super(const RecentInitial(null)) {
    on<OnGetRecentCharacter>((event, emit) async {
      emit(const RecentLoading(null));
      try {
        final characters = await characterRepo.getCharacters();
        emit(RecentDone(characters));
      } catch (e) {
        emit(const RecentError(null));
      }
    });

    on<OnClickItemRecentCharacter>((event, emit) {
      // TODO: implement event handler
    });
  }
}
