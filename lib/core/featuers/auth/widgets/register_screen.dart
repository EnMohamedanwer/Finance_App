import 'package:financce/core/featuers/auth/widgets/back_button_widget.dart';
import 'package:financce/core/featuers/auth/widgets/csutom_icon_button.dart';
import 'package:financce/core/featuers/auth/widgets/custom_or_widget.dart';
import 'package:financce/core/routing/app_routes.dart';
import 'package:financce/core/styling/app_assets.dart';
import 'package:financce/core/styling/app_colors.dart';
import 'package:financce/core/styling/app_styles.dart';
import 'package:financce/core/styling/widgets/custom_text_field.dart';
import 'package:financce/core/styling/widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatelessWidget {
  
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60.h,),
          BackButtonWidget(),
          SizedBox(height: 20.h,),
          SizedBox(
                  width: 280.w,
                  child: Text(
                    "Hello! Register to get started!",
                    style: AppStyles.primaryHeadLine,
                  ),
                ),
                SizedBox(height: 30.h,),
                CustomTextField(
                  hintText: "username",
                  width: 340.w,
                ),
                SizedBox(height: 20.h),
                CustomTextField(
                  hintText: "Enter your email",
                  width: 340.w,
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: AppColors.PrimaryColors,
                    size: 20.sp,
                  ),
                ),
                SizedBox(height: 20.h,),
                CustomTextField(
                  hintText: "password",
                  width: 340.w,
                ),
                SizedBox(height: 20.h,),
                CustomTextField(
                  hintText: "Confirm your password",
                  width: 340.w,
                ),
                SizedBox(height: 20.h),
                PrimaryButtonWidget(buttonText: "Register",onpressed: () {
                  GoRouter.of(context).pushNamed(AppRoutes.loginscreen);
                }, ),
                SizedBox(height: 20.h),
                SizedBox(height: 20.h),
                CustomOrWidget(),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                      ontap: () {},
                      iconpath: AppAssets.facebookSVGicon,
                    ),
                    CustomIconButton(
                      ontap: () {},
                      iconpath: AppAssets.googleSVGicon,
                    ),
                    CustomIconButton(
                      ontap: () {},
                      iconpath: AppAssets.appleSVGicon,
                    ),
                  ],
                ),
                SizedBox(height: 50.h),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Already have an account? ",
                      style: AppStyles.black16wstyle.copyWith(
                        color: AppColors.PrimaryColors,
                      ),
                      children: [
                        TextSpan(
                          text: "login",
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