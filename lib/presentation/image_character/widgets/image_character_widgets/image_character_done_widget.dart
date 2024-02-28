import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:theme/sizes/sizes.dart';

import '../../../../widgets/image_show_item_widget/image_show_item_widget.dart';

class ImageCharacterDoneWidget extends StatelessWidget {
  final List<ImageModel> imageCharacterModels;
  const ImageCharacterDoneWidget({super.key, required this.imageCharacterModels});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 4 / 7,
      padding: EdgeInsets.all(AppSize.paddingS),
      crossAxisSpacing: AppSize.paddingS,
      mainAxisSpacing: AppSize.paddingS,
      children: [
        ...List.generate(
          imageCharacterModels.length,
          (index) => ImageShowItemWidget(
            imageCharacterModels: imageCharacterModels,
            index: index,
          ),
        )
      ],
    );
  }
}
