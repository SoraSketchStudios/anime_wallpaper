import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

enum AppTypeSpace { normal, S, XS, L, XL }

class AppSpaceHeightWidget extends StatelessWidget {
  final AppTypeSpace appTypeSpace;

  const AppSpaceHeightWidget({Key? key, this.appTypeSpace = AppTypeSpace.normal})
      : super(key: key);

  factory AppSpaceHeightWidget.S() {
    return const AppSpaceHeightWidget(appTypeSpace: AppTypeSpace.S);
  }

  factory AppSpaceHeightWidget.XS() {
    return const AppSpaceHeightWidget(appTypeSpace: AppTypeSpace.XS);
  }

  factory AppSpaceHeightWidget.L() {
    return const AppSpaceHeightWidget(appTypeSpace: AppTypeSpace.L);
  }

  factory AppSpaceHeightWidget.XL() {
    return const AppSpaceHeightWidget(appTypeSpace: AppTypeSpace.XL);
  }

  @override
  Widget build(BuildContext context) {
    switch (appTypeSpace) {
      case AppTypeSpace.S:
        return SizedBox(
          height: AppSize.paddingS,
        );

      case AppTypeSpace.normal:
        return SizedBox(
          height: AppSize.padding,
        );

      case AppTypeSpace.XS:
        return SizedBox(
          height: AppSize.paddingXS,
        );

      case AppTypeSpace.L:
        return SizedBox(
          height: AppSize.paddingL,
        );

      case AppTypeSpace.XL:
        return SizedBox(
          height: AppSize.paddingXL,
        );
    }
  }
}
