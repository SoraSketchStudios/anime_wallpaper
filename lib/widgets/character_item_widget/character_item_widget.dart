import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:frame_project/core/blocs/favorite_character/favorite_character_bloc.dart';
import 'package:frame_project/routes/route_names.dart';
import 'package:theme/styles/styles.dart';
import 'package:hive_flutter/hive_flutter.dart';
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
              borderRadius: AppStyle.borderRadius,
            ),
            child: AppImageBuilderWidget(
              linkImage: characterModel.linkURL ?? "",
            ),
          ),
          Positioned(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ValueListenableBuilder(
                    valueListenable: FavoriteCharacterUseCase.box.listenable(),
                    builder: (context, box, widget) {
                      final bool checkFavorite = getIt<FavoriteCharacterBloc>()
                          .favoriteCharacterUseCase
                          .checkFavorite(characterModel.characterId ?? "");
                      return IconButton(
                        onPressed: () {
                          !checkFavorite
                              ? getIt<FavoriteCharacterBloc>()
                                  .add(OnAddFavoriteCharacter(characterModel))
                              : getIt<FavoriteCharacterBloc>().add(OnRemoveFavoriteCharacter(
                                  characterModel.characterId ?? "", context));
                        },
                        icon: Icon(
                          Icons.heart_broken,
                          color: checkFavorite ? Colors.red : null,
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
