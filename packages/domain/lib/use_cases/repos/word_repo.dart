import 'package:domain/models/history_word_model.dart';
import 'package:domain/models/word_model.dart';

abstract class WordRepo {
  Future<void> addWord(String word);

  Future<List<WordModel>?> getListWord();

  Future<List<HistoryWordModel>> getListHistoryWord(String word);

  Future<bool> getIt(WordModel wordModel);
}