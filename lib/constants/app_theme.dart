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

    // Elevated Button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(black),
      ),
    ),

    // Text Theme
    textTheme: const TextTheme(
      // Tic tac toe title
      titleLarge:
          TextStyle(color: white, fontSize: 40, fontWeight: FontWeight.bold),

      // Pick subtitle
      titleMedium: TextStyle(
        color: white,
        fontSize: 25,
        fontWeight: FontWeight.normal,
      ),

      // Game view timer text
      labelSmall:
          TextStyle(color: black, fontSize: 25, fontWeight: FontWeight.w600),

      // Game view user turn text
      labelMedium:
          TextStyle(color: white, fontSize: 25, fontWeight: FontWeight.bold),

      // Settings - dark mode title
      labelLarge:
          TextStyle(color: white, fontSize: 17, fontWeight: FontWeight.bold),

      // Settings = dark mode subtitle
      titleSmall:
          TextStyle(color: white, fontSize: 13, fontWeight: FontWeight.normal),

      // Game Button = Return Main Menu Text
      displaySmall:
          TextStyle(color: white, fontSize: 18, fontWeight: FontWeight.normal),

      // Game Button = Reset Game Text
      displayMedium:
          TextStyle(color: black, fontSize: 18, fontWeight: FontWeight.normal),
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

    // Elevated Button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(lightBlue),
      ),
    ),

    // Text Theme
    textTheme: const TextTheme(
      // Tic tac toe title
      titleLarge:
          TextStyle(color: white, fontSize: 40, fontWeight: FontWeight.bold),

      // Pick subtitle - Settings title and Winner dialog text
      titleMedium: TextStyle(
        color: white,
        fontSize: 25,
        fontWeight: FontWeight.normal,
      ),

      // Game view timer text
      labelSmall:
          TextStyle(color: black, fontSize: 25, fontWeight: FontWeight.w600),

      // Game view user turn text
      labelMedium:
          TextStyle(color: white, fontSize: 25, fontWeight: FontWeight.bold),

      // Settings - dark mode title
      labelLarge:
          TextStyle(color: white, fontSize: 17, fontWeight: FontWeight.bold),

      // Settings = dark mode subtitle
      titleSmall:
          TextStyle(color: white, fontSize: 13, fontWeight: FontWeight.normal),

      // Game Button Text
      displaySmall:
          TextStyle(color: white, fontSize: 18, fontWeight: FontWeight.normal),

      // Game Button = Reset Game Text
      displayMedium:
          TextStyle(color: black, fontSize: 18, fontWeight: FontWeight.normal),
    ),
  );
}
