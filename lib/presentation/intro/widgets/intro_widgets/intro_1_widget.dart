import 'package:flutter/material.dart';
import 'package:theme/image_export.dart';
import 'package:theme/theme.dart';

class Intro1Widget extends StatelessWidget {
  const Intro1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 5.w,
        ),
        Stack(
          children: [
            Image.asset(AppPathAsset.imageIntro1),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Text(
                "Welcome",
                textAlign: TextAlign.center,
                style: context.textTheme.titleLarge?.copyWith(fontFamily: "Bebas Neue"),
              ),
            ),
          ],
        ),
        const Expanded(child: SizedBox()),
        const Text("The Ultimate Anime Wallpaper Destination"),
      ],
    );
  }
}
