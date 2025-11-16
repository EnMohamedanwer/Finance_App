import 'package:financce/core/featuers/auth/widgets/back_button_widget.dart';
import 'package:financce/core/routing/app_routes.dart';
import 'package:financce/core/styling/app_colors.dart';
import 'package:financce/core/styling/app_styles.dart';
import 'package:financce/core/styling/widgets/custom_text_field.dart';
import 'package:financce/core/styling/widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60.h),
            const BackButtonWidget(),
            SizedBox(height: 20.h),
            SizedBox(
              width: 250.w,
              child: Text("forgot password?", style: AppStyles.primaryHeadLine),
            ),
            SizedBox(height: 8.h),
            SizedBox(
              width: 250.w,
              child: Text(
                "Don't worry it occurs. please enter the email addres linked with your account. ",
              ),
            ),
            SizedBox(height: 50.h),
            CustomTextField(hintText: "Enter your email.", width: 340.w),
            SizedBox(height: 30.h),
            PrimaryButtonWidget(
              buttonText: ("Send code "),
              onpressed: () {
                GoRouter.of(context).pushNamed(AppRoutes.OtpVerification);
              },
            ),
            SizedBox(height: 380.h),
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Remember password? ",
                  style: AppStyles.black16wstyle.copyWith(
                    color: AppColors.PrimaryColors,
                  ),
                  children: [
                    TextSpan(
                      text: "login",
                      onEnter: (event) {
                        GoRouter.of(context).pushNamed(AppRoutes.loginscreen);
                      },
                      style: AppStyles.black15bold,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
