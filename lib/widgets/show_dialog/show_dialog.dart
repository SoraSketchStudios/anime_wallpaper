import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

appShowDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (_) => Container(
            padding: EdgeInsets.symmetric(vertical: 2.6.w, horizontal: 3.6.w),
            child: Center(
              child: Container(
                color: Colors.red,
              ),
            ),
          ));
}
