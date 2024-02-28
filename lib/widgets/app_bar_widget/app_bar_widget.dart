import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

AppBar appBarWidget({required BuildContext context, required String title, Function? onBack}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: Row(children: [
      SizedBox(
        width: 5.14.w,
      ),
      GestureDetector(
        onTap: () {
          if (onBack == null) {
            Navigator.pop(context);
          } else {
            onBack.call();
          }
        },
        child: Image.asset(AppPathAsset.iconBack, width: 7.22.w, height: 7.22.w),
      ),
    ]),
    title: Text(
      title,
      style: context.textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: true,
  );
}
