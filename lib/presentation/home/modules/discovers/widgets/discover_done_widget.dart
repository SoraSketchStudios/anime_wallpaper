import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:theme/sizes/sizes.dart';

import '../../../../../widgets/character_item_widget/character_item_widget.dart';


class DiscoverDoneWidget extends StatelessWidget {
  final List<CharacterModel> characterModels;
  const DiscoverDoneWidget({super.key, required this.characterModels});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      crossAxisCount: 2,
      childAspectRatio: 4 / 7,
      padding: EdgeInsets.all(AppSize.paddingS),
      mainAxisSpacing: AppSize.paddingS,
      crossAxisSpacing: AppSize.paddingS,
      children: [
        ...List.generate(
          characterModels.length,
          (index) => CharacterItemWidget(
            characterModel: characterModels[index],
            size: null,
          ),
        )
      ],
    );
  }
}
