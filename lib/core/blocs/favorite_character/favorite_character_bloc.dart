import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:domain/domain.dart';
import 'package:widget/dialog/dialog.dart';

part 'favorite_character_event.dart';
part 'favorite_character_state.dart';

@singleton
class FavoriteCharacterBloc extends Bloc<FavoriteCharacterEvent, FavoriteCharacterState> {
  final FavoriteCharacterUseCase favoriteCharacterUseCase;
  FavoriteCharacterBloc(this.favoriteCharacterUseCase) : super(const FavoriteCharacterInitial([])) {
    on<FavoriteCharacterEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<OnGetFavoriteCharacter>((event, emit) {
      final data = favoriteCharacterUseCase.getItems();
      emit(FavoriteCharacterInitial(data));
    });

    on<OnAddFavoriteCharacter>((event, emit) {
      final item = favoriteCharacterUseCase.addCharacter(event.characterModel);
      emit(FavoriteCharacterInitial(
          item != null ? [...state.listFavorite, item] : state.listFavorite));
    });

    on<OnRemoveFavoriteCharacter>((event, emit) async {
      final check = await appShowAlertDialog(event.context);
      if (check) {
        final data = await favoriteCharacterUseCase.removeCharacter(event.idCharacter);
        emit(FavoriteCharacterInitial(data));
      }
    });

    on<OnDeleteAllFavoriteCharacter>((event, emit) {
      favoriteCharacterUseCase.cleanAll();
    });
  }
}
