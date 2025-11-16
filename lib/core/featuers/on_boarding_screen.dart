import 'package:financce/core/routing/app_routes.dart';
import 'package:financce/core/styling/app_styles.dart';
import 'package:financce/core/styling/widgets/primary_button_widget.dart';
import 'package:financce/core/styling/widgets/primary_outline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          Image.asset(
            "assets/images/bankimage.png",
            width: double.infinity,
            height: 510.h,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20.h),
          PrimaryButtonWidget(
            onpressed: () {
                            GoRouter.of(context).pushNamed(AppRoutes.MainScreen);
            },
            width: 331.h,
            height: 56.w,
            buttonText: "Login", ),
          SizedBox(height: 20.h),
          PrimaryOutlineButton(
            onpressed: () {
              GoRouter.of(context).pushNamed(AppRoutes.registerscreen);},
            width: 331.h,
            height: 56.w,
            buttonText: "Register",
          ),
          SizedBox(height: 39.h),
          Text(
            "Continue as guest",

            style: AppStyles.black15bold.copyWith(
              color: const Color(0xff202955),
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
