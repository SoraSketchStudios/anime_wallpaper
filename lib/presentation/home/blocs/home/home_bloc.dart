import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:frame_project/routes/route_names.dart';
import 'package:meta/meta.dart';
import 'package:widget/widget.dart';

part 'home_event.dart';
part 'home_state.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final CharacterRepo characterRepo;
  HomeBloc(this.characterRepo) : super(const HomeLoading(null, null)) {
    on<HomeEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<OnGetListCharacter>((event, emit) async {
      emit(HomeLoading(state.charactersSource, state.charactersShow));

      ///get data.
      List<CharacterModel>? characters =
          await characterRepo.getCharacters().onError((error, stackTrace) async {
        return null;
      }).then((value) => value);

      ///handle data.
      if (characters == null) {
        emit(HomeError(state.charactersSource, state.charactersShow));
      } else if (characters.isEmpty) {
        emit(const HomeEmptyCharacter([], []));
      } else {
        emit(HomeDone(characters, characters));
      }
    });

    on<OnClickItemCharacter>((event, emit) {
      Navigator.pushNamed(event.context, RouteName.imageCharacterScreen,
          arguments: event.characterModel);
    });

    on<OnReloadHome>((event, emit) {
      add(OnGetListCharacter());
    });

    on<OnSearchCharacter>((event, emit) async {
      if (event.textSearch.trim() == "") {
        emit(HomeDone(state.charactersSource, state.charactersSource));
        return;
      }

      EasyLoading.show();
      await Future.delayed(const Duration(seconds: 1));
      EasyLoading.dismiss();
      List<CharacterModel> listShow = [...(state.charactersSource ?? [])];
      listShow = listShow
          .where((element) => (element.name ?? "")
              .trim()
              .toLowerCase()
              .contains(event.textSearch.trim().toLowerCase()))
          .toList();
      emit(HomeDone(state.charactersSource, listShow));
    });
  }
}
