import 'package:flutter/material.dart';

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: CircularProgressIndicator(
                value: null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
