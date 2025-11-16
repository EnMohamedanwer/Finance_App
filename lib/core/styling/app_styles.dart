import 'package:financce/core/styling/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:financce/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static TextStyle primaryHeadLine = TextStyle(
    fontFamily: AppFonts.mainFontname,
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.PrimaryColors,
  );
  TextStyle subtitlesStyle = TextStyle(
    fontFamily: AppFonts.mainFontname,
    fontSize: 16.sp,
    fontWeight: FontWeight.w300,
    color: AppColors.secondrycolor,
  );
  static TextStyle black16wstyle = TextStyle(
    fontFamily: AppFonts.mainFontname,
    fontSize: 16.sp,
    fontWeight: FontWeight.w300,
    color: AppColors.blackcolor,
  );
  static TextStyle grey12Meduim = TextStyle(
    fontFamily: AppFonts.mainFontname,
    fontSize: 16.sp,
    fontWeight: FontWeight.w300,
    color: AppColors.greycolor,
  );
  static TextStyle black15bold = TextStyle(
    fontFamily: AppFonts.mainFontname,
    fontSize: 15.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.blackcolor,
  );
  static TextStyle black18bold = TextStyle(
    fontFamily: AppFonts.mainFontname,
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.blackcolor,
  );
}
