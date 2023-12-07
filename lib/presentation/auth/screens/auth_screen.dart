import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:voca_memo/presentation/auth/blocs/auth_bloc.dart';
import 'package:widget/widget.dart';

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
            getIt<AuthBloc>().add(OnSignInWithGoogle(context));
          },
        ),
      ),
    );
  }
}
