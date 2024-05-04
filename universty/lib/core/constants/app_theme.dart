import 'package:flutter/material.dart';

import 'app_color_manger.dart';

class AppTheme {
  static final light = ThemeData(
    primaryColor: AppColorManger.primary,
    primaryColorLight: AppColorManger.lightFontColor,
    primaryColorDark: AppColorManger.darkFontColor,
    scaffoldBackgroundColor: const Color.fromARGB(255, 216, 214, 216),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: const AppBarTheme(
      color: AppColorManger.primary,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    expansionTileTheme: ExpansionTileThemeData(
      iconColor: AppColorManger.sideBarIcon,
      collapsedBackgroundColor: AppColorManger.primary,
      // backgroundColor: AppColorManger.red,
    ),
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSwatch(
        accentColor: AppColorManger.primary, brightness: Brightness.light),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          // darkFontColor
          fontFamily: 'Cairo',
          color: AppColorManger.lightFontColor,
          fontSize: 26,
          fontWeight: FontWeight.bold),
      titleMedium: TextStyle(
        fontFamily: 'Cairo',
        color: AppColorManger.lightFontColor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: TextStyle(
        fontFamily: 'Cairo',
        color: AppColorManger.lightFontColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Cairo',
        color: AppColorManger.lightFontColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Cairo',
        color: AppColorManger.lightFontColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Cairo',
        color: AppColorManger.lightFontColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      displayLarge: TextStyle(
        fontFamily: 'Cairo',
        color: AppColorManger.lightFontColor,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Cairo',
        color: AppColorManger.lightFontColor,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        fontFamily: 'Cairo',
        color: AppColorManger.lightFontColor,
        fontSize: 10,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  static final dark = ThemeData(
    primaryColor: AppColorManger.primary,
    primaryColorLight: AppColorManger.darkFontColor,
    primaryColorDark: AppColorManger.lightFontColor,
    scaffoldBackgroundColor: AppColorManger.darkScaffold,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSwatch(
      accentColor: AppColorManger.primary,
      brightness: Brightness.dark,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
          fontFamily: 'Cairo',
          color: AppColorManger.darkFontColor,
          fontSize: 24,
          fontWeight: FontWeight.bold),
      titleMedium: TextStyle(
        fontFamily: 'Cairo',
        color: AppColorManger.darkFontColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: TextStyle(
        fontFamily: 'Cairo',
        color: AppColorManger.darkFontColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Cairo',
        color: AppColorManger.darkFontColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Cairo',
        color: AppColorManger.darkFontColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Cairo',
        color: AppColorManger.darkFontColor,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      displayLarge: TextStyle(
        fontFamily: 'Cairo',
        color: AppColorManger.darkFontColor,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Cairo',
        color: AppColorManger.darkFontColor,
        fontSize: 10,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        fontFamily: 'Cairo',
        color: AppColorManger.darkFontColor,
        fontSize: 8,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
