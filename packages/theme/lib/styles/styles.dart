import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class AppStyle {
  static BorderRadius borderRadius = BorderRadius.all(Radius.circular(AppSize.radius));
  static List<BoxShadow> boxShadow = [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 5,
      blurRadius: 7,
      offset: const Offset(0, 3), // changes position of shadow
    ),
  ];
}
