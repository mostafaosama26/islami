import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:islami/ui/utils/app_colors.dart';

abstract class AppStyle{
  static const TextStyle appBarStyle = TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, color: AppColors.accentColor);
  static const TextStyle titlesTextStyle = TextStyle(
      fontSize: 25, fontWeight: FontWeight.w600, color: AppColors.accentColor);
  static const TextStyle suraTextStyle = TextStyle(
      fontSize: 20, fontWeight: FontWeight.w400, color: AppColors.accentColor);

  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.transparent,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: AppColors.transparent,
      titleTextStyle: AppStyle.appBarStyle,
    ),
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primaryColor,
        onPrimary: AppColors.primaryColor,
        secondary: AppColors.accentColor,
        onSecondary: AppColors.accentColor,
        error: Colors.red,
        onError: Colors.red,
        background: AppColors.transparent,
        onBackground: AppColors.transparent,
        surface: AppColors.transparent,
        onSurface: AppColors.transparent),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.accentColor,
      selectedIconTheme: IconThemeData(size: 40),
      unselectedIconTheme: IconThemeData(size: 34),
      unselectedItemColor: AppColors.white
    ),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.darkBlue,
    scaffoldBackgroundColor: AppColors.transparent,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: AppColors.transparent,
      titleTextStyle: AppStyle.appBarStyle.copyWith(color: AppColors.white),
    ),
    colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.darkBlue,
        onPrimary: AppColors.darkBlue,
        secondary: AppColors.yellow,
        onSecondary: AppColors.yellow,
        error: Colors.red,
        onError: Colors.red,
        background: AppColors.transparent,
        onBackground: AppColors.transparent,
        surface: AppColors.transparent,
        onSurface: AppColors.transparent),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.yellow,
      selectedIconTheme: IconThemeData(size: 40),
      unselectedIconTheme: IconThemeData(size: 34),
        unselectedItemColor: AppColors.white
    ),
  );
}