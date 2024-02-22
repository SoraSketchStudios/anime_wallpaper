import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:frame_project/routes/route_names.dart';
import 'package:theme/theme.dart';
import 'package:widget/widget.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../../core/blocs/favorite_image/favorite_image_bloc.dart';
import '../../presentation/image_character/screens/image_character_photo_view.dart';

class ImageShowItemWidget extends StatelessWidget {
  final List<ImageCharacterModel> imageCharacterModels;
  final int index;
  const ImageShowItemWidget({super.key, required this.imageCharacterModels, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, RouteName.imageCharacterPhotoView,
                arguments: ImageCharacterModels(imageCharacterModels, index));
          },
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.16.w)),
            child: AppImageBuilderWidget(
              linkImage: imageCharacterModels[index].linkUrl ?? "",
            ),
          ),
        ),
        Positioned(
          left: 1.w,
          bottom: 1.w,
          child: ValueListenableBuilder(
              valueListenable: FavoriteImageUseCase.box.listenable(),
              builder: (context, box, widget) {
                final bool checkFavorite = getIt<FavoriteImageBloc>()
                    .favoriteImageUseCase
                    .checkFavorite(imageCharacterModels[index].linkUrl ?? "");
                return GestureDetector(
                  onTap: () {
                    !checkFavorite
                        ? getIt<FavoriteImageBloc>()
                            .add(OnAddFavoriteImage(imageCharacterModels[index].linkUrl ?? ""))
                        : getIt<FavoriteImageBloc>().add(OnRemoveFavoriteImage(
                            imageCharacterModels[index].linkUrl ?? "", context));
                  },
                  child: Container(
                    padding: EdgeInsets.all(1.67.w),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xff191E31).withOpacity(0.53),
                    ),
                    child: SizedBox(
                      height: 5.w,
                      child: checkFavorite
                          ? Image.asset(
                              AppPathAsset.iconHeart,
                              color: Colors.red,
                            )
                          : Image.asset(
                              AppPathAsset.iconHeart,
                              color: null,
                            ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
