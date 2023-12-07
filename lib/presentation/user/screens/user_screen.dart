import 'package:core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:theme/theme.dart';
import 'package:voca_memo/presentation/user/blocs/user/user_bloc.dart';
import 'package:widget/widget.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(AppSize.padding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(FirebaseAuth.instance.currentUser?.displayName ?? ""),
            AppSpaceHeightWidget.S(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  onPressed: () {
                    getIt<UserBloc>().add(OnSignOut(context));
                  },
                  child: Text("Sign Out")),
            ),
          ],
        ),
      ),
    );
  }
}
