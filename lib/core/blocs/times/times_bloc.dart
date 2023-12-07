import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:meta/meta.dart';

part 'times_event.dart';
part 'times_state.dart';

@lazySingleton
class TimesBloc extends Bloc<TimesEvent, TimesState> {
  final TimesUseCase timesRepo;
  TimesBloc(this.timesRepo) : super(const TimesInitial(0)) {
    on<TimesEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<OnInit>((event, emit) async {
      final times = await timesRepo.initTimes();
      emit(TimesInitial(times));
    });

    on<OnIncreaseTimes>((event, emit) async {
      timesRepo.increaseTimes();
      emit(TimesInitial(state.times + 1));
    });
  }
}
