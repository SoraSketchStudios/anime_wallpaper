import 'package:core/core.dart';
import 'package:data/firebase_server/firebase_service/word_service.dart';
import 'package:domain/domain.dart';
import 'package:domain/models/history_word_model.dart';

import '../firebase_service/history_word_service.dart';

@LazySingleton(as: WordRepo)
class WordRepoImp implements WordRepo {
  final WordService wordService;
  final HistoryWordService historyWordService;
  WordRepoImp(this.wordService, this.historyWordService);

  @override
  Future<void> addWord(String word) async {
    await wordService.addItem(word);
  }

  @override
  Future<List<WordModel>?> getListWord() async {
    return wordService.getItems();
  }

  @override
  Future<List<HistoryWordModel>> getListHistoryWord(String word) {
    return historyWordService.listHistoryWord(word);
  }
}
