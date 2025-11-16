import 'package:financce/core/styling/app_colors.dart';
import 'package:financce/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 207.w,
          height: 263.h,
          decoration: BoxDecoration(
            color: AppColors.PrimaryColors,
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        Positioned(
          bottom: 0.5,
          left: 0.5,
          child: Container(
            width: 150.w,
            height: 150.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.1),
            ),
          ),
        ),
        Positioned(
          left: 24.w,
          top: 24.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "X card",
                style: AppStyles.black15bold.copyWith(
                  fontSize: 12.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Balance:",
                style: AppStyles.black15bold.copyWith(
                  fontSize: 15.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30),
              Text(
                "25,643 TL,",
                style: AppStyles.black15bold.copyWith(
                  fontSize: 18.sp,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 26.w,
          right: 24.w,
          child: Text(
            "12/33",
            style: AppStyles.black15bold.copyWith(
              fontSize: 12.sp,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: 26.w,
          left: 24.w,
          child: Text(
            "**** 3456",
            style: AppStyles.black15bold.copyWith(
              fontSize: 12.sp,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
