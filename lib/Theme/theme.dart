import 'package:flutter/material.dart';
ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Color(0xFFF6F6F6),
    secondary: Color(0xFFC1FF72),
    primary: Color(0xFF8ECAE6),
  ),
  scaffoldBackgroundColor: Color(0xFFF6F6F6),

);
ThemeData darkMode =ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Color(0xFF121212),
    secondary: Color(0xFFC1FF72),
    primary: Color(0xFF8ECAE6),
  ),
  scaffoldBackgroundColor: Color(0xFF424242),
);
