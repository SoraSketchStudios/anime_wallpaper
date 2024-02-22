import 'package:flutter/material.dart';

final appTheme = ThemeData(
  fontFamily: "Inter",
  colorScheme: ThemeData.light().colorScheme.copyWith(
        background: const Color(0xffF9F9F9),
        primary: const Color(0xff0071E3),
      ),
);

final appThemeDark = ThemeData(
  fontFamily: "Poppins",
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    foregroundColor: Colors.transparent,
    titleTextStyle: TextStyle(fontSize: 12),
  ),
);
