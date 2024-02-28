import 'package:flutter/material.dart';
import 'package:frame_project/routes/route_names.dart';
import 'package:frame_project/shared_preferences/shared_preferences.dart';
import 'package:theme/image_export.dart';
import 'package:theme/theme.dart';

class IntroControlTabWidget extends StatelessWidget {
  final int indexSelect;
  final Function onCallBack;
  const IntroControlTabWidget({super.key, required this.indexSelect, required this.onCallBack});

  @override
  Widget build(BuildContext context) {
    final sizeTab = 3.w;
    final sizeSpace = 7.w;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(child: Text("SKIP")),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                (indexSelect == 0) ? AppPathAsset.iconTabIntroHighlight : AppPathAsset.iconTabIntro,
                width: sizeTab,
              ),
              SizedBox(
                width: sizeSpace,
              ),
              Image.asset(
                (indexSelect == 1) ? AppPathAsset.iconTabIntroHighlight : AppPathAsset.iconTabIntro,
                width: sizeTab,
              ),
              SizedBox(
                width: sizeSpace,
              ),
              Image.asset(
                (indexSelect == 2) ? AppPathAsset.iconTabIntroHighlight : AppPathAsset.iconTabIntro,
                width: sizeTab,
              ),
              SizedBox(
                width: sizeSpace,
              ),
              Image.asset(
                (indexSelect == 3) ? AppPathAsset.iconTabIntroHighlight : AppPathAsset.iconTabIntro,
                width: sizeTab,
              ),
            ],
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                if (indexSelect != 3) {
                  onCallBack.call();
                } else {
                  SharePreferenceController.setIsFirst();
                  Navigator.pushNamed(context, RouteName.mainScreen);
                }
              },
              child: Container(
                color: Colors.transparent,
                height: 10.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    indexSelect != 3
                        ? Image.asset(
                            AppPathAsset.iconNext,
                            width: sizeTab,
                          )
                        : const Text("Done"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
