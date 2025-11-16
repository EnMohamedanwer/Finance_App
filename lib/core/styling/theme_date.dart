import 'package:financce/core/styling/app_colors.dart';
import 'package:financce/core/styling/app_fonts.dart';
import 'package:financce/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
class AppTheme{
  static final  lightTheme =ThemeData(
    primaryColor: AppColors.PrimaryColors,
    scaffoldBackgroundColor: AppColors.whitecolor,
    fontFamily: AppFonts.mainFontname,
    textTheme: TextTheme(
      titleLarge: AppStyles.primaryHeadLine,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.PrimaryColors,
      disabledColor: AppColors.secondrycolor,
    )
  );
}