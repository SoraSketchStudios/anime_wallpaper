import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class Intro4Widget extends StatelessWidget {
  const Intro4Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 5.w,
        ),
        Text(
          "explore now".toUpperCase(),
          style: context.textTheme.titleLarge?.copyWith(fontFamily: "Bebas Neue"),
        ),
        const Expanded(child: SizedBox()),
        Image.asset(AppPathAsset.imageIntro4),
        const Expanded(child: SizedBox()),
        const Text(
          "Enter The World Of Stunning Wallpapers And Begin Your Exciting Exploration Now!",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
