import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static Color iconColor = Colors.blue.shade500;
  static const _greyColor = Colors.grey;

  static const _lightPrimaryColor = Colors.white;
  static const _lightPrimaryVariantColor = Color(0xffe1e1e1);
  static const _lightSecondaryColor = Colors.green;
  static const _lightSecondaryVariantColor = Color(0xff03ab45);
  static const _lightOnPrimaryColor = Colors.black;

  static const _darkPrimaryColor = Colors.black;
  static const _darkPrimaryVariantColor = Colors.white24;
  static const _darkSecondaryColor = Colors.green;
  static const _darkSecondaryVariantColor = Color(0xff03ab45);
  static const _darkOnPrimaryColor = Colors.white;
  // primary color should not be shaded. They must be opaque

  static ThemeData lightTheme = ThemeData(
    primaryColor: _lightPrimaryColor,
    scaffoldBackgroundColor: _lightPrimaryVariantColor,
    appBarTheme: AppBarTheme(
      backgroundColor: _lightPrimaryVariantColor,
      iconTheme: IconThemeData(
        color: _lightOnPrimaryColor,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: _lightPrimaryColor,
      primaryVariant: _lightPrimaryVariantColor,
      secondary: _lightSecondaryColor,
      secondaryVariant: _lightSecondaryVariantColor,
      onPrimary: _lightOnPrimaryColor,
    ),
    iconTheme: IconThemeData(
      color: iconColor,
    ),
    textTheme: TextTheme(
      headline1: _lightHeadline1TextStyle,
      bodyText1: _lightBodyText1TextStyle,
      bodyText2: _lightBodyText2TextStyle,
    ),
  );

  static TextStyle _lightHeadline1TextStyle =
      TextStyle(fontSize: 48, color: _lightOnPrimaryColor);
  static TextStyle _lightBodyText1TextStyle =
      TextStyle(fontSize: 20, color: _lightOnPrimaryColor);
  static TextStyle _lightBodyText2TextStyle =
      TextStyle(fontSize: 16, color: _greyColor);

  static ThemeData darkTheme = ThemeData(
    primaryColor: _darkPrimaryColor,
    scaffoldBackgroundColor: _darkPrimaryVariantColor,
    appBarTheme: AppBarTheme(
      backgroundColor: _darkPrimaryVariantColor,
      iconTheme: IconThemeData(
        color: _darkOnPrimaryColor,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: _darkPrimaryColor,
      primaryVariant: _darkPrimaryVariantColor,
      secondary: _darkSecondaryColor,
      secondaryVariant: _darkSecondaryVariantColor,
      onPrimary: _darkOnPrimaryColor,
    ),
    iconTheme: IconThemeData(
      color: iconColor,
    ),
    textTheme: TextTheme(
      headline1: _darkHeadline1TextStyle,
      bodyText1: _darkBodyText1TextStyle,
      bodyText2: _darkBodyText2TextStyle,
    ),
  );

  static TextStyle _darkHeadline1TextStyle =
      TextStyle(fontSize: 48, color: _darkOnPrimaryColor);
  static TextStyle _darkBodyText1TextStyle =
      TextStyle(fontSize: 20, color: _darkOnPrimaryColor);
  static TextStyle _darkBodyText2TextStyle =
      TextStyle(fontSize: 16, color: _greyColor);
}
