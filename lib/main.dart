import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictactoe_app/view/start_view.dart';

import 'constants/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // env
  //await dotenv.load(fileName: ".env");

  // Get themeMode
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(
    themeMode: savedThemeMode,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.themeMode}) : super(key: key);

  final dynamic themeMode;

  @override
  Widget build(BuildContext context) {
    // App Theme
    final appTheme = AppTheme();

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (BuildContext context, Widget? child) => AdaptiveTheme(
        // Light Mode
        light: appTheme.lightTheme,

        // Dark Mode
        dark: appTheme.darkTheme,

        // initial
        initial: themeMode ?? AdaptiveThemeMode.system,

        // Builder
        builder: (theme, darkTheme) => MaterialApp(
          title: 'Tic Tac Toe',
          theme: theme,
          darkTheme: darkTheme,
          home: const StartView(),
        ),
      ),
    );
  }
}
