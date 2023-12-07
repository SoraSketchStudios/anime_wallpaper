import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'times_event.dart';
part 'times_state.dart';

class TimesBloc extends Bloc<TimesEvent, TimesState> {
  TimesBloc() : super(TimesInitial()) {
    on<TimesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
