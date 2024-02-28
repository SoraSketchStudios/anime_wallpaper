import 'package:flutter/material.dart';
import 'package:frame_project/routes/route_names.dart';
import 'package:theme/theme.dart';

import '../widgets/setting_item_widget.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Row(children: [
          SizedBox(
            width: 5.14.w,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(AppPathAsset.iconBack, width: 7.22.w, height: 7.22.w),
          ),
        ]),
        title: Text(
          "Settings",
          style: context.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(3.33.w),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 5.97.w, left: 5.w, bottom: 5.97.w),
              width: 100.w,
              decoration: BoxDecoration(
                boxShadow: AppStyle.boxShadow,
                color: Colors.white,
                borderRadius: AppStyle.borderRadius,
              ),
              child: Column(
                children: [
                  // SettingItemWidget(
                  //   iconPath: AppPathAsset.iconSend,
                  //   title: "Invite a friend",
                  //   onTap: () {},
                  // ),
                  SettingItemWidget(
                    iconPath: AppPathAsset.iconStar,
                    title: "Rate this app",
                    onTap: () {},
                  ),
                  // SettingItemWidget(
                  //   iconPath: AppPathAsset.iconMess,
                  //   title: "Feedback & bugs",
                  //   onTap: () {},
                  // ),
                  SettingItemWidget(
                    iconPath: AppPathAsset.iconTerm,
                    title: "Terms & Conditions",
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.termOfUseScreen);
                    },
                  ),
                  SettingItemWidget(
                    iconPath: AppPathAsset.iconPrivacy,
                    title: "Privacy Policy",
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.privacyScreen);
                    },
                    isEnd: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
