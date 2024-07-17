import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:islami/ui/utils/app_colors.dart';

abstract class AppStyle{
  static const TextStyle appBarStyle = TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, color: AppColors.accentColor);
  static const TextStyle titlesTextStyle = TextStyle(
      fontSize: 25, fontWeight: FontWeight.w600, color: AppColors.accentColor);
}