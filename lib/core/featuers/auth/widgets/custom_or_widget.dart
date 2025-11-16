import 'package:financce/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOrWidget extends StatelessWidget {
  const CustomOrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                  children: [
                    SizedBox(width: 100.w,child: Divider(),),
                    SizedBox(width: 12.w,),
                    Text("Or Login With",style: AppStyles.black15bold.copyWith(color: Color(0xff6A707C)),),
                    SizedBox(width: 12.w,),
                    SizedBox(width: 100.w,child: Divider(),),
                  ],
                );
  }
}