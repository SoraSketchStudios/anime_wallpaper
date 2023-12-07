import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'words_event.dart';
part 'words_state.dart';

class WordsBloc extends Bloc<WordsEvent, WordsState> {
  WordsBloc() : super(WordsInitial()) {
    on<WordsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
