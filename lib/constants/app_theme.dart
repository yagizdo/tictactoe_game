import 'package:flutter/material.dart';

class AppTheme {
  final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.black, foregroundColor: Colors.white),
    colorScheme: const ColorScheme.dark(
      brightness: Brightness.dark,
      primary: Colors.black38,
      secondary: Colors.black,
    ),
  );

  final lightTheme = ThemeData(
    //primarySwatch: Colors.yellow,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFF00D2FF), foregroundColor: Color(0xFF3A7BD5)),
    colorScheme: const ColorScheme.light(
      brightness: Brightness.light,
      primary: Color(0xFF00D2FF),
      secondary: Color(0xFF3A7BD5),
    ),
  );
}
