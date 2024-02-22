import 'package:flutter/material.dart';
import 'package:theme/theme.dart';
import 'package:widget/widget.dart';

class HomeTabBarItem extends StatelessWidget {
  final String title;
  final String pathIcon;
  final bool isSelect;
  const HomeTabBarItem(
      {super.key, required this.title, required this.pathIcon, required this.isSelect});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24.58.w,
      height: 12.11.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.w),
          gradient: isSelect
              ? const LinearGradient(
                  colors: [
                    Color(0xff6747E7),
                    Color(0xff00FFF0),
                  ],
                )
              : null),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 5.2.w,
            child: isSelect
                ? Image.asset(
                    pathIcon,
                    color: Colors.white,
                  )
                : ShaderMask(
                    shaderCallback: (Rect bounds) => const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xff6747E7),
                        Color(0xff00FFF0),
                      ],
                    ).createShader(bounds),
                    child: Image.asset(pathIcon),
                  ),
          ),
          // SizedBox(
          //   height: 0.625.w,
          // ),
          AutoSizeText(
            title,
            style: context.textTheme.bodyMedium
                ?.copyWith(color: isSelect ? Colors.white : context.colorScheme.primary),
          ),
        ],
      ),
    );
  }
}
