import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

import '../../../widgets/image_show_item_widget/image_show_item_widget.dart';

class SearchDoneWidget extends StatelessWidget {
  final List<ImageModel> imageModels;
  const SearchDoneWidget({super.key, required this.imageModels});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        crossAxisCount: 3,
        childAspectRatio: 4 / 7,
        mainAxisSpacing: 2.7.w,
        crossAxisSpacing: 2.7.w,
        padding: EdgeInsets.only(top: 2.73.w, left: 3.1.w, right: 3.1.w),
        children: [
          ...List.generate(
            imageModels.length,
            (index) => ImageShowItemWidget(
              imageCharacterModels: imageModels,
              index: index,
            ),
          )
        ],
      ),
    );
  }
}
