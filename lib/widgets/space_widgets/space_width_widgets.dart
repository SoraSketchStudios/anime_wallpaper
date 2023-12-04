import 'package:flutter/material.dart';
import 'package:voca_memo/theme/sizes/sizes.dart';
import 'package:voca_memo/widgets/space_widgets/space_height_widgets.dart';

class AppSpaceWidthWidget extends StatelessWidget {
  final AppTypeSpace appTypeSpace;

  const AppSpaceWidthWidget({Key? key, required this.appTypeSpace})
      : super(key: key);

  factory AppSpaceWidthWidget.S() {
    return const AppSpaceWidthWidget(appTypeSpace: AppTypeSpace.S);
  }

  factory AppSpaceWidthWidget.XS() {
    return const AppSpaceWidthWidget(appTypeSpace: AppTypeSpace.XS);
  }

  factory AppSpaceWidthWidget.L() {
    return const AppSpaceWidthWidget(appTypeSpace: AppTypeSpace.L);
  }

  factory AppSpaceWidthWidget.XL() {
    return const AppSpaceWidthWidget(appTypeSpace: AppTypeSpace.XL);
  }

  @override
  Widget build(BuildContext context) {
    switch (appTypeSpace) {
      case AppTypeSpace.S:
        return SizedBox(
          width: AppSize.paddingS,
        );

      case AppTypeSpace.normal:
        return SizedBox(
          width: AppSize.padding,
        );

      case AppTypeSpace.XS:
        return SizedBox(
          width: AppSize.paddingXS,
        );

      case AppTypeSpace.L:
        return SizedBox(
          width: AppSize.paddingL,
        );

      case AppTypeSpace.XL:
        return SizedBox(
          width: AppSize.paddingXL,
        );
    }
  }
}
