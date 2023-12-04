import 'package:flutter/material.dart';
import 'package:voca_memo/data/firebase_services/auth_service.dart';
import 'package:voca_memo/routes/route_names.dart';
import 'package:voca_memo/widgets/button_widgets/button_widget.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppButtonWidget(
          child: const Text("Sign in with google"),
          onPressed: () async {
            // print("auth");
            await AuthService.loginWithGoogle();
            Navigator.pushNamed(context, RouteName.homeScreen);
          },
        ),
      ),
    );
  }
}
