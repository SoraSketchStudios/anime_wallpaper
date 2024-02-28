import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:frame_project/presentation/image_character/screens/image_character_photo_view.dart';
import 'package:frame_project/widgets/image_show_item_widget/image_show_item_widget.dart';
import 'package:theme/sizes/sizes.dart';
import 'package:theme/theme.dart';

import '../../../../../widgets/character_item_widget/character_item_widget.dart';

class RecentDoneWidget extends StatelessWidget {
  final List<ImageModel> imageModels;
  const RecentDoneWidget({super.key, required this.imageModels});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      crossAxisCount: 3,
      childAspectRatio: 4 / 7,
      mainAxisSpacing: 2.7.w,
      crossAxisSpacing: 2.7.w,
      padding: EdgeInsets.only(top: 2.73.w),
      children: [
        ...List.generate(
          imageModels.length,
          (index) => ImageShowItemWidget(
            imageCharacterModels: [
              ...imageModels.map((e) => ImageModel(linkUrl: e.linkUrl))
            ],
            index: index,
          ),
        )
      ],
    );
  }
}
