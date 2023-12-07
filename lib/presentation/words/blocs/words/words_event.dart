part of 'words_bloc.dart';

@immutable
abstract class WordsEvent {}

class OnGetWords extends WordsEvent {}

class OnTapItemWord extends WordsEvent {
  final BuildContext context;
  final WordModel wordModel;

  OnTapItemWord(this.context, this.wordModel);
}
