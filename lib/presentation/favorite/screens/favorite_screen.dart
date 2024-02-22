import 'package:flutter/material.dart';
import 'package:frame_project/presentation/favorite/widgets/favorite_image_widget.dart';
import 'package:theme/theme.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Row(children: [
          SizedBox(
            width: 5.14.w,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(AppPathAsset.iconBack, width: 7.22.w, height: 7.22.w),
          ),
        ]),
        title: Text(
          "Favorites",
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: const FavoriteImageWidget(),
    );
  }
}
