import 'package:flutter/material.dart';

final appTheme = ThemeData(
  fontFamily: "Kalam",
  useMaterial3: true,
);

final appThemeDark = ThemeData(
  fontFamily: "Kalam",
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
  ),
);
