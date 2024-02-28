import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:theme/image_export.dart';
import 'package:theme/sizes/sizes.dart';
import 'package:theme/theme.dart';

class ImageCharacterPhotoViewAppbar extends StatelessWidget {
  final List<ImageModel> imageCharacterModels;
  const ImageCharacterPhotoViewAppbar({super.key, required this.imageCharacterModels});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: AppSize.appbarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset(
                AppPathAsset.iconBack,
                width: 7.22.w,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset(
                AppPathAsset.iconExpand,
                width: 5.w,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
