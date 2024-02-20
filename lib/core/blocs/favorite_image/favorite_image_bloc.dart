import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:domain/domain.dart';
import 'package:widget/dialog/dialog.dart';

part 'favorite_image_event.dart';
part 'favorite_image_state.dart';

@singleton
class FavoriteImageBloc extends Bloc<FavoriteImageEvent, FavoriteImageState> {
  final FavoriteImageUseCase favoriteImageUseCase;
  FavoriteImageBloc(this.favoriteImageUseCase) : super(const FavoriteCharacterInitial([])) {
    on<FavoriteImageEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<OnGetFavoriteImage>((event, emit) {
      final data = favoriteImageUseCase.getItems();
      emit(FavoriteCharacterInitial(data));
    });

    on<OnAddFavoriteImage>((event, emit) {
      final item = favoriteImageUseCase.addCharacter(event.linkImage);
      emit(FavoriteCharacterInitial(
          item != null ? [...state.listFavoriteImage, item] : state.listFavoriteImage));
    });

    on<OnRemoveFavoriteImage>((event, emit) async {
      final check = await appShowAlertDialog(event.context);
      if (check) {
        final data = await favoriteImageUseCase.removeCharacter(event.linkImage);
        emit(FavoriteCharacterInitial(data));
      }
    });

    on<OnDeleteAllFavoriteImage>((event, emit) {
      favoriteImageUseCase.cleanAll();
    });
  }
}
