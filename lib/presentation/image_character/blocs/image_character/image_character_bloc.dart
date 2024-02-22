import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frame_project/routes/route_names.dart';
import 'package:meta/meta.dart';
import 'package:wallpaper/wallpaper.dart';
import 'package:widget/widget.dart';

import '../../screens/image_character_photo_view.dart';
part 'image_character_event.dart';
part 'image_character_state.dart';

@lazySingleton
class ImageCharacterBloc extends Bloc<ImageCharacterEvent, ImageCharacterState> {
  final CharacterRepo characterRepo;
  ImageCharacterBloc(this.characterRepo) : super(const ImageCharacterLoading(null, null)) {
    on<OnInitBlocImageCharacter>((event, emit) {
      emit(ImageCharacterLoading(event.characterModel, const []));
      add(OnGetImagesCharacter());
    });

    on<OnGetImagesCharacter>((event, emit) async {
      emit(ImageCharacterLoading(state.characterModel, const []));
      List<ImageCharacterModel>? imageCharacterModels = await characterRepo
          .getImageCharacters(state.characterModel?.characterId ?? "")
          .onError((error, stackTrace) async {
        return null;
      }).then((value) => value);

      if (imageCharacterModels == null) {
        emit(ImageCharacterError(state.characterModel, const []));
      } else if (imageCharacterModels.isEmpty) {
        emit(ImageCharacterDone(state.characterModel, const []));
      } else {
        emit(ImageCharacterDone(state.characterModel, imageCharacterModels));
      }
    });

    on<OnClickDownload>((event, emit) {});

    on<OnClickItemImage>((event, emit) {
      Navigator.pushNamed(event.context, RouteName.imageCharacterPhotoView,
          arguments: event.imageCharacterModels);
    });

    on<OnClickSetHomeScreen>((event, emit) {
      final progressString =
          Wallpaper.imageDownloadProgress(event.imageCharacterModel.linkUrl ?? "");
      progressString.listen((data) {
        EasyLoading.show();
      }, onDone: () async {
        await Wallpaper.homeScreen();
        EasyLoading.dismiss();
      }, onError: (error) {
        print("Some Error");
      });
    });

    on<OnClickSetLockScreen>((event, emit) {
      final progressString =
      Wallpaper.imageDownloadProgress(event.imageCharacterModel.linkUrl ?? "");
      progressString.listen((data) {
        EasyLoading.show();
      }, onDone: () async {
        await Wallpaper.lockScreen();
        EasyLoading.dismiss();
      }, onError: (error) {
        print("Some Error");
      });
    });

    on<OnClickSetBothScreen>((event, emit) {
      final progressString =
      Wallpaper.imageDownloadProgress(event.imageCharacterModel.linkUrl ?? "");
      progressString.listen((data) {
        EasyLoading.show();
      }, onDone: () async {
        await Wallpaper.bothScreen();
        EasyLoading.dismiss();
      }, onError: (error) {
        print("Some Error");
      });
    });

    on<OnReloadImageCharacter>((event, emit) {
      add(OnGetImagesCharacter());
    });
  }
}
