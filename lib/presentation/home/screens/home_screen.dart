import 'package:flutter/material.dart';
import 'package:voca_memo/data/firebase_services/auth_service.dart';
import 'package:voca_memo/theme/sizes/sizes.dart';
import 'package:voca_memo/widgets/button_widgets/button_widget.dart';
import 'package:voca_memo/widgets/space_widgets/space_height_widgets.dart';
import 'package:voca_memo/widgets/text_field/text_field_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(AppSize.padding),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AppTextFieldWidget(),
              AppSpaceHeightWidget.S(),
              AppButtonWidget(
                onPressed: () {},
                size: Size(
                    MediaQuery.of(context).size.width, AppSize.buttonHeight),
                child: const Text("Add"),
              ),
              AppButtonWidget(
                onPressed: () {
                  AuthService.logOut();
                },
                size: Size(
                    MediaQuery.of(context).size.width, AppSize.buttonHeight),
                child: const Text("Log Out"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
