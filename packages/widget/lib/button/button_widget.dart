import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:theme/sizes/sizes.dart';

class AppButtonWidget extends StatelessWidget {
  final Widget child;
  final Function onPressed;
  final Size? size;
  const AppButtonWidget(
      {super.key, required this.child, required this.onPressed, this.size});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed.call();
      },
      child: Container(
        width: size?.width,
        height: size?.height,
        margin: const EdgeInsets.only(left: 1.0),
        padding: const EdgeInsets.fromLTRB(14.0, 0, 14.0, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: const GradientBoxBorder(
            gradient: LinearGradient(
              colors: [
                Color(0xffBD4CE0),
                Color(0xff541095),
              ],
            ),
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0x00000066),
              offset: Offset(0, 30),
              blurRadius: 30,
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Color(0xFF541095),
              offset: Offset(0, 0),
              blurRadius: 5,
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Color(0x9375B6),
              offset: Offset(0, -1),
              blurRadius: 8,
              spreadRadius: 0,
            ),
          ],
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3361, 0.8919],
            colors: [
              Color(0x80FFFFFF),
              Color(0x80404040),
            ],
          ),
          backgroundBlendMode: BlendMode.overlay,
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
