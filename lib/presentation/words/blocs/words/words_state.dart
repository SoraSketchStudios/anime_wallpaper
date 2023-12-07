part of 'words_bloc.dart';

@immutable
abstract class WordsState {
  final List<WordModel> listWord;

  const WordsState(this.listWord);
}

class WordsInitial extends WordsState {
  const WordsInitial(super.listWord);
}

class WordsLoading extends WordsState {
  const WordsLoading(super.listWord);
}

class WordsDone extends WordsState {
  const WordsDone(super.listWord);
}
