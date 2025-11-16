import 'package:financce/core/featuers/auth/widgets/back_button_widget.dart';
import 'package:financce/core/featuers/auth/widgets/csutom_icon_button.dart';
import 'package:financce/core/featuers/auth/widgets/custom_or_widget.dart';
import 'package:financce/core/featuers/auth/widgets/forget_password.dart';
import 'package:financce/core/styling/app_assets.dart';
import 'package:financce/core/styling/app_colors.dart';
import 'package:financce/core/styling/app_styles.dart';
import 'package:financce/core/styling/widgets/custom_text_field.dart';
import 'package:financce/core/styling/widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    password = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60),
                const SizedBox(height: 20),
                const BackButtonWidget(),
                SizedBox(height: 20.h),
                SizedBox(
                  width: 280.w,
                  child: Text(
                    "Welcome Back! Again!..",
                    style: AppStyles.primaryHeadLine,
                  ),
                ),
                SizedBox(height: 30.h),
                CustomTextField(
                  controller: emailController,
                  hintText: "Enter your email..",
                  width: 340.w,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your email..";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20.h),
                CustomTextField(
                  controller: password,
                  hintText: "Enter your password..",
                  width: 340.w,
                  validator: (value) {
                    if (value!.length < 8) {
                      return "Password must be at least 8 characters";
                    }
                    return null;
                  },
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: AppColors.PrimaryColors,
                    size: 20.sp,
                  ),
                ),
                SizedBox(height: 20.h),
                Align(
                  alignment: AlignmentGeometry.centerRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgetPassword(),
                        ),
                      );
                    },
                    child: Text(
                      "Forget password?",
                      style: AppStyles.black15bold.copyWith(
                        color: AppColors.PrimaryColors,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                PrimaryButtonWidget(
                  buttonText: "Login",
                  onpressed: () {
                    if (formKey.currentState!.validate()) {}
                  },
                ),
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
                SizedBox(height: 150.h),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Don't hava an account? ",
                      style: AppStyles.black16wstyle.copyWith(
                        color: AppColors.PrimaryColors,
                      ),
                      children: [
                        TextSpan(
                          text: "Register Now..",
                          style: AppStyles.black15bold,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
