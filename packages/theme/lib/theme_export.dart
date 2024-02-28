import 'package:flutter/material.dart';

final appTheme = ThemeData(
  fontFamily: "Inter",
  colorScheme: ThemeData.light().colorScheme.copyWith(
        background: const Color(0xffF9F9F9),
        primary: const Color(0xff0071E3),
      ),
);

final appThemeDark = ThemeData(
  fontFamily: "Montserrat",
  useMaterial3: true,
  colorScheme: ThemeData.dark().colorScheme.copyWith(
        background: const Color(0xff18181B),
        primary: const Color(0xff6C1066),
      ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    foregroundColor: Colors.transparent,
    titleTextStyle: TextStyle(fontSize: 12),
  ),
);
