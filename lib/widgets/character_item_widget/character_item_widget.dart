import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:frame_project/core/blocs/favorite_character/favorite_character_bloc.dart';
import 'package:frame_project/routes/route_names.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:theme/theme.dart';
import 'package:widget/image_builder/image_builder_widget.dart';

class CharacterItemWidget extends StatelessWidget {
  final CharacterModel characterModel;
  final Size? size;
  const CharacterItemWidget({super.key, required this.characterModel, this.size});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          RouteName.imageCharacterScreen,
          arguments: characterModel,
        );
      },
      child: Stack(
        children: [
          Container(
            width: size?.width,
            height: size?.height,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.8.w),
            ),
            child: AppImageBuilderWidget(
              linkImage: characterModel.linkURL ?? "",
            ),
          ),
          Positioned(
            bottom: 1.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ValueListenableBuilder(
                    valueListenable: FavoriteCharacterUseCase.box.listenable(),
                    builder: (context, box, widget) {
                      final bool checkFavorite = getIt<FavoriteCharacterBloc>()
                          .favoriteCharacterUseCase
                          .checkFavorite(characterModel.characterId ?? "");
                      return GestureDetector(
                        onTap: () {
                          !checkFavorite
                              ? getIt<FavoriteCharacterBloc>()
                                  .add(OnAddFavoriteCharacter(characterModel))
                              : getIt<FavoriteCharacterBloc>().add(OnRemoveFavoriteCharacter(
                                  characterModel.characterId ?? "", context));
                        },
                        child: Container(
                          padding: EdgeInsets.all(1.67.w),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xff191E31).withOpacity(0.53),
                          ),
                          child: SizedBox(
                            height: 3.47.w,
                            child: Image.asset(
                              AppPathAsset.iconHeart,
                              color: checkFavorite ? Colors.red : null,
                            ),
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
