import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:meta/meta.dart';

part 'search_event.dart';
part 'search_state.dart';

@lazySingleton
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final ImageUseCase imageUseCase;
  SearchBloc(this.imageUseCase) : super(const SearchInitial([])) {
    on<SearchEvent>((event, emit) {});
    on<OnSearch>((event, emit) async {
      if (event.characterNames == "") {
        emit(const SearchInitial([]));
      } else {
        emit(const SearchLoading([]));
        final data = await imageUseCase.searchImageByName(event.characterNames);
        emit(SearchDone(data ?? []));
      }
    });

    on<OnReset>((event, emit) {
      emit(const SearchInitial([]));
    });
  }
}
