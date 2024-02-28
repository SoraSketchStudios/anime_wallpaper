import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class Intro2Widget extends StatelessWidget {
  const Intro2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 5.w,
        ),
        Text(
          "Over 1 MILLION",
          style: context.textTheme.titleLarge?.copyWith(fontFamily: "Bebas Neue"),
        ),
        Text(
          "WALLPAPERS",
          style: context.textTheme.titleLarge?.copyWith(
            fontFamily: "Bebas Neue",
          ),
        ),
        const Expanded(child: SizedBox()),
        Image.asset(AppPathAsset.imageIntro2),
        const Expanded(child: SizedBox()),
        const Text(
          "Immerse Yourself In The Largest Anime Wallpaper Collection On Our App",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
