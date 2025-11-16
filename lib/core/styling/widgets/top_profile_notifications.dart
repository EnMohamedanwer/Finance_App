import 'package:financce/core/styling/app_assets.dart';
import 'package:financce/core/styling/app_colors.dart';
import 'package:financce/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopProfileNotifications extends StatelessWidget {
  const TopProfileNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipOval(child: Image.asset (AppAssets.profileimage,width: 48.w,height: 48.h,fit: BoxFit.fill,
                ),
                ),
                SizedBox(width: 11,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome back",
                    style: AppStyles.black15bold.copyWith(fontSize: 12.sp,color: const Color(0xff6A707C )),),
                    SizedBox(height: 2,),
                    Text("Mohamed Anwar",
                    style: AppStyles.black18bold,),
                  ],
                )
              ],
            ),
            Container(
              width: 48.w, height: 48.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: BoxBorder.all(color:  Colors.grey,width: 1)
              ),
              child: Icon(Icons.notifications, size: 24.sp,color: AppColors.PrimaryColors,),
            )
      
          ],
         );
  }
}