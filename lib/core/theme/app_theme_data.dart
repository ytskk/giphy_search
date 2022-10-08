import 'package:flutter/material.dart';
import 'package:giphy/core/core.dart';

// Fast approach to return a theme.
ThemeData primaryThemeData() {
  return ThemeData.dark().copyWith(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    ),
  );
}
