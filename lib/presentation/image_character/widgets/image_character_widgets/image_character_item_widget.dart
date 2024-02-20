import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:frame_project/routes/route_names.dart';
import 'package:widget/widget.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../../core/blocs/favorite_image/favorite_image_bloc.dart';
import '../../screens/image_character_photo_view.dart';

class ImageCharacterItemWidget extends StatelessWidget {
  final List<ImageCharacterModel> imageCharacterModels;
  final int index;
  const ImageCharacterItemWidget(
      {super.key, required this.imageCharacterModels, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, RouteName.imageCharacterPhotoView,
                arguments: ImageCharacterModels(imageCharacterModels, index));
          },
          child: AppImageBuilderWidget(
            linkImage: imageCharacterModels[index].linkUrl ?? "",
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: ValueListenableBuilder(
              valueListenable: FavoriteImageUseCase.box.listenable(),
              builder: (context, box, widget) {
                final bool checkFavorite = getIt<FavoriteImageBloc>()
                    .favoriteImageUseCase
                    .checkFavorite(imageCharacterModels[index].linkUrl ?? "");
                return IconButton(
                  onPressed: () {
                    !checkFavorite
                        ? getIt<FavoriteImageBloc>()
                            .add(OnAddFavoriteImage(imageCharacterModels[index].linkUrl ?? ""))
                        : getIt<FavoriteImageBloc>().add(OnRemoveFavoriteImage(
                            imageCharacterModels[index].linkUrl ?? "", context));
                  },
                  icon: Icon(
                    Icons.heart_broken,
                    color: checkFavorite ? Colors.red : null,
                  ),
                );
              }),
        ),
      ],
    );
  }
}
