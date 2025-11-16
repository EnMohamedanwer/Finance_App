 import 'package:financce/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryOutlineButton extends StatelessWidget {
  final String? buttonText;
  final Color? borderscolor;
  final double? width;
  final double? height;
  final double? bordersRaduis;
  final Color? textColor;
  final double? fontsize;
  final void Function()? onpressed;
  const PrimaryOutlineButton({
    super.key, 
    this.bordersRaduis,
    this.buttonText,
    this.borderscolor,
    this.width,
    this.fontsize,
    this.height,
    this.textColor,
    this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onpressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: borderscolor ?? AppColors.PrimaryColors,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(bordersRaduis ?? 8.r),
        ),
        fixedSize: Size(width ?? 331.w, height ?? 56.h),
      ),
      child: Text(
        buttonText ?? "register",
        style: TextStyle(
          color: textColor ?? AppColors.PrimaryColors ,
        fontSize: fontsize ?? 18.sp,),
      ),
    );
  }
}
