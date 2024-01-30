import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:theme/sizes/sizes.dart';
import 'package:theme/theme.dart';

class AppButtonWidget extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final Function onPressed;
  final Size? size;
  const AppButtonWidget({
    super.key,
    required this.child,
    required this.onPressed,
    this.size,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed.call();
      },
      child: Container(
        width: size?.width,
        height: size?.height,
        margin: const EdgeInsets.only(left: 1.0),
        padding: const EdgeInsets.fromLTRB(14.0, 0, 14.0, 0),
        decoration: BoxDecoration(
          color: backgroundColor ?? context.colorScheme.primary,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}

class AppButtonBasic extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Function onPressed;
  final double? width;
  final double? height;
  const AppButtonBasic({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed.call();
      },
      child: Container(
        width: width,
        height: height ?? AppSize.buttonHeight,
        margin: const EdgeInsets.only(left: 1.0),
        padding: const EdgeInsets.fromLTRB(14.0, 0, 14.0, 0),
        decoration: BoxDecoration(
          color: backgroundColor ?? context.colorScheme.primary,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            text,
            style: context.textTheme.labelLarge
                ?.copyWith(color: context.colorScheme.onPrimary),
          ),
        ),
      ),
    );
  }
}
