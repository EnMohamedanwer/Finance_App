import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback? ontap;
  final String iconpath;
  const CustomIconButton({super.key,this.ontap, required this.iconpath });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 65.h,
        width: 105.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: Colors.transparent,
          border: Border.all(color: Color(0xffE8ECF4), width: 1),
        ),
        child: Center(
          child: SvgPicture.asset(
            iconpath,
            width: 12.w,
            height: 24.h,
          ),
        ),
      ),
    );
    
  }
}
