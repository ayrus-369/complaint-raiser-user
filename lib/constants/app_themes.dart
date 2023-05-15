import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_font_family.dart';

class AppThemes {
  AppThemes._();

  static const double contentMargin = 25;

  //constants color range for light theme
  static const Color lightPrimaryColor = Colors.black;
  static const Color lightPrimaryVariantColor = Colors.white;
  static const Color lightSecondaryColor = Colors.green;
  static const Color lightOnPrimaryColor = Colors.black;
  static const Color lightButtonPrimaryColor = Colors.orangeAccent;
  static const Color lightAppBarColor = Colors.orangeAccent;
  static Color lightIconColor = Colors.orangeAccent;
  static Color lightSnackBarBackgroundErrorColor = Colors.redAccent;

  static const Color primaryColor = Color(0xFFFF6838);
  static const Color secondaryColor = Color(0xFF302F3C);
  static const Color tertiaryColor = Color(0xFFFAFAFA);
  static const Color subColor = Color(0x66302F3C);
  static const Color backgroundColor = Color(0xFFFFFFFF);

  //text theme for light theme
  static final TextStyle _lightScreenHeadingTextStyle =
      const TextStyle(fontSize: 20.0, color: lightOnPrimaryColor);
  static final TextStyle _lightScreenTaskNameTextStyle =
      const TextStyle(fontSize: 16.0, color: lightOnPrimaryColor);
  static final TextStyle _lightScreenTaskDurationTextStyle =
      const TextStyle(fontSize: 14.0, color: Colors.grey);
  static final TextStyle _lightScreenButtonTextStyle = const TextStyle(
      fontSize: 14.0, color: lightOnPrimaryColor, fontWeight: FontWeight.w500);
  static final TextStyle _lightScreenCaptionTextStyle = const TextStyle(
      fontSize: 12.0, color: lightAppBarColor, fontWeight: FontWeight.w100);

  // static final TextTheme lightTextTheme = TextTheme(
  //   headlineMedium: _lightScreenHeadingTextStyle,
  //   bodyText1: _lightScreenTaskNameTextStyle,
  //   bodyText2: _lightScreenTaskDurationTextStyle,
  //   button: _lightScreenButtonTextStyle,
  //   headlineLarge: _lightScreenTaskNameTextStyle,
  //   headlineSmall: _lightScreenTaskNameTextStyle,
  //   caption: _lightScreenCaptionTextStyle,
  // );

  //constants color range for dark theme
  static const Color _darkPrimaryColor = Colors.white;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static const Color _darkSecondaryColor = Colors.white;
  static const Color _darkOnPrimaryColor = Colors.white;
  static const Color _darkButtonPrimaryColor = Colors.deepPurpleAccent;
  static const Color _darkAppBarColor = Colors.deepPurpleAccent;
  static Color _darkIconColor = Colors.deepPurpleAccent;
  static Color _darkSnackBarBackgroundErrorColor = Colors.redAccent;

  //text theme for dark theme
  static final TextStyle _darkScreenHeadingTextStyle =
      _lightScreenHeadingTextStyle.copyWith(color: _darkOnPrimaryColor);
  static final TextStyle _darkScreenTaskNameTextStyle =
      _lightScreenTaskNameTextStyle.copyWith(color: _darkOnPrimaryColor);
  static final TextStyle _darkScreenTaskDurationTextStyle =
      _lightScreenTaskDurationTextStyle;
  static final TextStyle _darkScreenButtonTextStyle = const TextStyle(
      fontSize: 14.0, color: _darkOnPrimaryColor, fontWeight: FontWeight.w500);
  static final TextStyle _darkScreenCaptionTextStyle = const TextStyle(
      fontSize: 12.0, color: _darkAppBarColor, fontWeight: FontWeight.w100);

  // static final TextTheme _darkTextTheme = TextTheme(
  //   headlineMedium: _darkScreenHeadingTextStyle,
  //   bodyText1: _darkScreenTaskNameTextStyle,
  //   bodyText2: _darkScreenTaskDurationTextStyle,
  //   button: _darkScreenButtonTextStyle,
  //   headlineLarge: _darkScreenTaskNameTextStyle,
  //   headlineSmall: _darkScreenTaskNameTextStyle,
  //   caption: _darkScreenCaptionTextStyle,
  // );

  //the light theme
  static final ThemeData lightTheme = ThemeData(
    // fontFamily: AppFontFamily.productSans,
    textTheme: GoogleFonts.ralewayTextTheme(),
    scaffoldBackgroundColor: backgroundColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: lightButtonPrimaryColor,
    ),
    appBarTheme: AppBarTheme(
        // color: lightAppBarColor,
        iconTheme: const IconThemeData(color: lightOnPrimaryColor),
        // textTheme: lightTextTheme,
        backgroundColor: lightPrimaryVariantColor),
    colorScheme: const ColorScheme.light(
      primary: lightPrimaryColor,
      primaryVariant: lightPrimaryVariantColor,
      secondary: lightSecondaryColor,
      onPrimary: lightOnPrimaryColor,
    ),
    snackBarTheme:
        SnackBarThemeData(backgroundColor: lightSnackBarBackgroundErrorColor),
    iconTheme: IconThemeData(
      color: lightIconColor,
    ),
    popupMenuTheme: const PopupMenuThemeData(color: lightAppBarColor),
    // textTheme: _lightTextTheme,
    buttonTheme: const ButtonThemeData(
        buttonColor: lightButtonPrimaryColor,
        textTheme: ButtonTextTheme.primary),
    unselectedWidgetColor: lightPrimaryColor,
    inputDecorationTheme: const InputDecorationTheme(
        fillColor: lightPrimaryColor,
        labelStyle: TextStyle(
          color: lightPrimaryColor,
        )),
  );

  //the dark theme
  static final ThemeData darkTheme = ThemeData(
    // fontFamily: AppFontFamily.productSans,
    textTheme: GoogleFonts.meriendaTextTheme(),
    scaffoldBackgroundColor: _darkPrimaryVariantColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: _darkButtonPrimaryColor,
    ),
    appBarTheme: AppBarTheme(
      // color: _darkAppBarColor,
      iconTheme: const IconThemeData(color: _darkOnPrimaryColor),
      // textTheme: _darkTextTheme,
    ),
    colorScheme: const ColorScheme.light(
      primary: _darkPrimaryColor,
      primaryVariant: _darkPrimaryVariantColor,
      secondary: _darkSecondaryColor,
      onPrimary: _darkOnPrimaryColor,
    ),
    snackBarTheme:
        SnackBarThemeData(backgroundColor: _darkSnackBarBackgroundErrorColor),
    iconTheme: IconThemeData(
      color: _darkIconColor,
    ),
    popupMenuTheme: const PopupMenuThemeData(color: _darkAppBarColor),
    // textTheme: _darkTextTheme,
    buttonTheme: const ButtonThemeData(
        buttonColor: _darkButtonPrimaryColor,
        textTheme: ButtonTextTheme.primary),
    unselectedWidgetColor: _darkPrimaryColor,
    inputDecorationTheme: const InputDecorationTheme(
        fillColor: _darkPrimaryColor,
        labelStyle: TextStyle(
          color: _darkPrimaryColor,
        )),
  );
}
