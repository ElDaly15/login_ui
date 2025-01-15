import 'package:flutter/material.dart';
import 'package:login_ui/core/utils/app_colors.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.secondTextColor,
  scaffoldBackgroundColor: AppColors.mainColorTheme,
  cardColor: AppColors.firstTextColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.mainColorTheme,
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  cardColor: AppColors.mainColorTheme,
  primaryColor: AppColors.mainColorTheme,
  scaffoldBackgroundColor: Colors.grey.shade900,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.mainColorTheme,
  ),
);
