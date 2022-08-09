import 'package:flutter/material.dart';

// Colors
const white = Color(0xFFFFFFFF);
const blue = Color(0xFF3A7BD5);
const lightBlue = Color(0xFF00D2FF);
const black = Color(0xFF323232);

class AppTheme {
  final darkTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: black, foregroundColor: Colors.white),
    colorScheme: const ColorScheme.dark(
      brightness: Brightness.dark,
      primary: Colors.black38,
      secondary: black,
    ),
    textTheme: const TextTheme(
      subtitle1: TextStyle(
        color: white,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
      subtitle2: TextStyle(
        color: white,
        fontSize: 25,
        fontWeight: FontWeight.normal,
      ),
    ),
  );

  final lightTheme = ThemeData(
    //primarySwatch: Colors.yellow,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: lightBlue,
      foregroundColor: blue,
    ),
    colorScheme: const ColorScheme.light(
      brightness: Brightness.light,
      primary: lightBlue,
      secondary: blue,
    ),
    textTheme: const TextTheme(
      subtitle1:
          TextStyle(color: white, fontSize: 40, fontWeight: FontWeight.bold),
      subtitle2: TextStyle(
        color: white,
        fontSize: 25,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}
