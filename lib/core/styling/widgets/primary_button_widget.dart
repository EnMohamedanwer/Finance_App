import 'package:financce/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String? buttonText;
  final Color? buttoncolor;
  final double? width;
  final double? height;
  final double? bordersRaduis;
  final Color? textColor;
  final double? fontsize;
  final void Function()? onpressed;
  const PrimaryButtonWidget({
    super.key,
    this.bordersRaduis,
    this.buttonText,
    this.buttoncolor,
    this.width,
    this.fontsize,
    this.height,
    this.textColor,
    this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttoncolor ?? AppColors.PrimaryColors,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(bordersRaduis ?? 8.r),
        ),
        fixedSize: Size(width ?? 331.w, height ?? 56.h),
      ),

      child: Text(
        buttonText ?? "",
        style: TextStyle(color: textColor ?? Colors.white,fontSize: fontsize ?? 18.sp),
      ),
    );
  }
}
