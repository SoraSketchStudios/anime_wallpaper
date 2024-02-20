import 'package:flutter/material.dart';

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: const Center(
        child: CircularProgressIndicator(
          value: null,
        ),
      ),
    );
  }
}
