import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class Intro3Widget extends StatelessWidget {
  const Intro3Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 5.w,
        ),
        Text(
          "unmatched".toUpperCase(),
          style: context.textTheme.titleLarge?.copyWith(fontFamily: "Bebas Neue"),
        ),
        Text(
          "anime collection".toUpperCase(),
          style: context.textTheme.titleLarge?.copyWith(
            fontFamily: "Bebas Neue",
          ),
        ),
        const Expanded(child: SizedBox()),
        Image.asset(AppPathAsset.imageIntro3),
        const Expanded(child: SizedBox()),
        const Text(
          "Customize Your Anime Experience With Our Unbeatable Category Section Featuring 700+ Categories And A Staggering 1000+ Characters",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
