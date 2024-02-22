import 'package:flutter/material.dart';
import 'package:theme/theme.dart';
import 'package:widget/widget.dart';

class HomeBottomBarItemV2 extends StatelessWidget {
  final bool isSelect;
  final String title;
  final String? pathIcon;
  final IconData? icons;
  final Function onPress;
  const HomeBottomBarItemV2({
    Key? key,
    required this.isSelect,
    required this.title,
    this.pathIcon,
    required this.onPress,
    this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeIcon = 60;
    return isSelect
        ? Container(
            padding: EdgeInsets.all(AppSize.paddingXS),
            width: 10.w,
            height: 10.w,
            decoration: BoxDecoration(
                color: context.colorScheme.primary,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    (MediaQuery.of(context).size.width),
                  ),
                )),
            child: pathIcon != null
                ? Column(
                    children: [
                      Image.asset(
                        pathIcon!,
                        color: context.colorScheme.onPrimary,
                        width: 20,
                      ),
                      FittedBox(
                          child: AutoSizeText(
                        title,
                        style: context.textTheme.labelSmall
                            ?.copyWith(color: context.colorScheme.onSurface),
                      ))
                    ],
                  )
                : Column(
                    children: [
                      Icon(
                        icons,
                        color: context.colorScheme.onPrimary,
                        size: 25,
                      ),
                      FittedBox(
                          child: AutoSizeText(
                        title,
                        style: context.textTheme.labelSmall,
                      ))
                    ],
                  ),
          )
        : GestureDetector(
            onTap: () {
              onPress();
            },
            child: Container(
              padding: EdgeInsets.all(AppSize.paddingXS),
              width: (sizeIcon),
              height: (sizeIcon),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    (MediaQuery.of(context).size.width),
                  ),
                ),
              ),
              child: pathIcon != null
                  ? Column(
                      children: [
                        Image.asset(
                          pathIcon!,
                          color: context.colorScheme.onSurface,
                          width: 25,
                        ),
                        FittedBox(
                            child: AutoSizeText(
                          title,
                          style: context.textTheme.labelSmall
                              ?.copyWith(color: context.colorScheme.onSurface),
                        ))
                      ],
                    )
                  : Column(
                      children: [
                        Icon(
                          icons,
                          color: context.colorScheme.onSurface,
                          size: 25,
                        ),
                        FittedBox(
                            child: AutoSizeText(
                          title,
                          style: context.textTheme.labelSmall,
                        ))
                      ],
                    ),
            ),
          );
  }
}
