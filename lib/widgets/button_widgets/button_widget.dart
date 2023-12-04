import 'package:flutter/material.dart';

class AppButtonWidget extends StatelessWidget {
  final Widget child;
  final Function onPressed;
  final Size? size;
  const AppButtonWidget(
      {super.key, required this.child, required this.onPressed, this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size?.width,
      height: size?.height,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        child: child,
      ),
    );
  }
}
