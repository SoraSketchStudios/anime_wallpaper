part of 'search_bloc.dart';

@immutable
abstract class SearchState {
  final List<ImageModel> imageModels;

  const SearchState(this.imageModels);
}

class SearchInitial extends SearchState {
  const SearchInitial(super.imageModels);
}

class SearchLoading extends SearchState {
  const SearchLoading(super.imageModels);
}

class SearchDone extends SearchState {
  const SearchDone(super.imageModels);
}
