import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:voca_memo/presentation/words/dialogs/detail_word.dart';

part 'words_event.dart';
part 'words_state.dart';

@lazySingleton
class WordsBloc extends Bloc<WordsEvent, WordsState> {
  final WordRepo wordRepo;
  WordsBloc(this.wordRepo) : super(const WordsLoading([])) {
    on<WordsEvent>((event, emit) {});

    on<OnGetWords>((event, emit) async {
      emit(const WordsLoading([]));
      final List<WordModel>? listWord = await wordRepo.getListWord();
      emit(WordsDone(listWord ?? []));
    });

    on<OnTapItemWord>((event, emit) async {
      final listData = await getHistoryWords(event.wordModel.word ?? "");
      showDialogDetailWord(event.context, listData);
    });
  }

  Future<List<HistoryWordModel>> getHistoryWords(String word) {
    return wordRepo.getListHistoryWord(word);
  }
}
