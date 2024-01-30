import 'package:flutter/material.dart';

final appTheme = ThemeData(
  fontFamily: "Inter",
  colorScheme: ThemeData.light().colorScheme.copyWith(),
);

final appThemeDark = ThemeData(
  fontFamily: "Inter",
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    titleTextStyle: TextStyle(fontSize: 12),
  ),
);
