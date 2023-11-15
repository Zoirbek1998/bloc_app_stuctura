import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/theme/themeUtils.dart';

enum AppTheme { Dark, Light }


final Map<AppTheme, ThemeData> kAppThemeData = {
  AppTheme.Dark: ThemeData.dark().copyWith(
    primaryColor: kDarkPrimary,
    scaffoldBackgroundColor: kDarkBg,
    textTheme: GoogleFonts.openSansTextTheme(
      const TextTheme().copyWith(
        displayLarge:const TextStyle(
          fontSize: 64,
          color: kDarkTextColor,
        ),
        displayMedium:const TextStyle(
          fontSize: 32,
          color: kDarkTextColor,
        ),
        displaySmall:const TextStyle(
          fontSize: 24,
          color: kDarkTextColor,
          fontWeight: FontWeight.bold,
        ),
        headlineMedium:const TextStyle(
          fontSize: 24,
          color: kDarkTextColor,
        ),
        headlineSmall:const TextStyle(
          fontSize: 20,
          color: kDarkTextColor,
        ),
        titleLarge:const TextStyle(
          fontSize: 16,
          color: kDarkTextColor,
        ),
        bodyLarge:const TextStyle(
          fontSize: 12,
          color: kDarkTextColor,
        ),
        bodyMedium:const TextStyle(
          fontSize: 14,
          color: kDarkTextColor,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        minimumSize: MaterialStateProperty.all(
          const Size(double.infinity, 56),
        ),
        shape: MaterialStateProperty.all(
          const StadiumBorder(),
        ),
        foregroundColor: MaterialStateProperty.all(
          kDarkTextColor,
        ),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 16,
            color: kDarkTextColor,
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(kDarkPrimary),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 16,
            color: kDarkPrimary,
          ),
        ),
      ),
    ),
    bottomNavigationBarTheme:const BottomNavigationBarThemeData(
      backgroundColor: kDarkBg,
      selectedItemColor: kDarkPrimary,
      selectedIconTheme: IconThemeData(
        color: kDarkPrimary,
        size: 24,
      ),
      unselectedItemColor: kDarkPlaceholderText,
      unselectedIconTheme: IconThemeData(
        color: kDarkPlaceholderText,
        size: 24,
      ),
    ),
    appBarTheme:const AppBarTheme(
      backgroundColor: kDarkBg,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      iconTheme: IconThemeData(
        color: kDarkTextColor,
      ),
      titleTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: kDarkTextColor,
      ),
    ),
    colorScheme:const ColorScheme.dark()
        .copyWith(
      background: kDarkPlaceholder,
      surface: kDarkPlaceholderText,
      primary: kDarkPrimary,
      secondary: kDarkAccent,
    )
        .copyWith(background: kDarkPlaceholder)
        .copyWith(error: kDarkError),
  ),

  AppTheme.Light: ThemeData.light().copyWith(
    primaryColor: kLightPrimary,
    scaffoldBackgroundColor: kLightBg,
    textTheme: GoogleFonts.openSansTextTheme(
      const TextTheme().copyWith(
        displayLarge: const TextStyle(
          fontSize: 64,
          color: kLightTextColor,
        ),
        displayMedium:const TextStyle(
          fontSize: 32,
          color: kLightTextColor,
        ),
        displaySmall:const TextStyle(
          fontSize: 24,
          color: kLightTextColor,
          fontWeight: FontWeight.bold,
        ),
        headlineMedium:const TextStyle(
          fontSize: 24,
          color: kLightTextColor,
        ),
        headlineSmall:const TextStyle(
          fontSize: 20,
          color: kLightTextColor,
        ),
        titleLarge:const TextStyle(
          fontSize: 16,
          color: kLightTextColor,
        ),
        bodyLarge:const TextStyle(
          fontSize: 12,
          color: kLightTextColor,
        ),
        bodyMedium:const TextStyle(
          fontSize: 14,
          color: kLightTextColor,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(5),
        minimumSize: MaterialStateProperty.all(
          const Size(double.infinity, 56),
        ),
        shape: MaterialStateProperty.all(
          const StadiumBorder(),
        ),
        foregroundColor: MaterialStateProperty.all(
          kDarkTextColor,
        ),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 16,
            color: kDarkTextColor,
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(kLightPrimary),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 16,
            color: kLightPrimary,
          ),
        ),
      ),
    ),
    appBarTheme:const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: kLightPrimary,
      titleTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: kDarkTextColor,
      ),
    ),
    bottomNavigationBarTheme:const BottomNavigationBarThemeData(
      backgroundColor: kLightBg,
      selectedItemColor: kLightPrimary,
      selectedIconTheme: IconThemeData(
        color: kLightPrimary,
        size: 24,
      ),
      unselectedItemColor: kLightPlaceholderText,
      unselectedIconTheme: IconThemeData(
        color: kLightPlaceholderText,
        size: 24,
      ),
    ),
    colorScheme:const ColorScheme.light()
        .copyWith(
      background: kLightPlaceholder,
      surface: kLightPlaceholderText,
      primary: kLightPrimary,
      secondary: kLightAccent,
    )
        .copyWith(background: kLightPlaceholder)
        .copyWith(error: kLightError),
  )
};