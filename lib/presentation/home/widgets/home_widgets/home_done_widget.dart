import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:theme/sizes/sizes.dart';
import '../character_item_widgets/character_item_widget.dart';

class HomeDoneWidget extends StatelessWidget {
  final List<CharacterModel> characters;
  const HomeDoneWidget({super.key, required this.characters});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 3,
      padding: EdgeInsets.all(AppSize.paddingS),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      mainAxisSpacing: AppSize.paddingS,
      itemCount: characters.length,
      crossAxisSpacing: AppSize.paddingS,
      itemBuilder: (context, index) {
        if (index == 0) {
          return LayoutBuilder(
            builder: (_, size) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.center,
                  color: Colors.red,
                  width: size.maxWidth,
                  height: size.maxWidth * 0.75,
                  child: Image.network(
                      "https://drive.google.com/uc?id=1x2N_JRliO-gyL9FnItrdMfo-uYUcKQaU"),
                ),
                SizedBox(
                  height: AppSize.paddingS,
                ),
                CharacterItemWidget(
                  height: size.maxWidth * 1.5,
                  characterModel: characters[index],
                )
              ],
            ),
          );
        }
        return LayoutBuilder(
          builder: (_, size) => CharacterItemWidget(
            height: size.maxWidth * 1.5,
            characterModel: characters[index],
          ),
        );
      },
    );
  }
}
