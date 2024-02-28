import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class SettingItemWidget extends StatelessWidget {
  final String iconPath;
  final String title;
  final Function? onTap;
  final bool isEnd;
  const SettingItemWidget(
      {super.key, required this.iconPath, required this.title, this.onTap, this.isEnd = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(1.27.w),
                  decoration: BoxDecoration(
                    color: const Color(0xff191E31),
                    borderRadius: BorderRadius.circular(
                      2.07.w,
                    ),
                  ),
                  child: Image.asset(
                    iconPath,
                    width: 6.94.w,
                    height: 6.94.w,
                  ),
                ),
                SizedBox(
                  width: 4.79.w,
                ),
                Text(
                  title,
                  style: context.textTheme.titleMedium?.copyWith(color: const Color(0xff222222)),
                ),
                const Expanded(child: SizedBox()),
                Image.asset(
                  AppPathAsset.iconNext,
                  width: 1.65.w,
                  height: 3.06.w,
                ),
                SizedBox(
                  width: 6.86.w,
                ),
              ],
            ),
            if (!isEnd)
              SizedBox(
                height: 2.77.w,
              ),
            if (!isEnd)
              Padding(
                padding: EdgeInsets.only(left: 9.58.w),
                child: const Divider(
                  height: 1,
                ),
              ),
            if (!isEnd)
              SizedBox(
                height: 2.77.w,
              ),
          ],
        ),
      ),
    );
  }
}
