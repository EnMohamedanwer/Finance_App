import 'package:financce/core/featuers/auth/homepage/custom_carousel_widget.dart';
import 'package:financce/core/styling/app_colors.dart';
import 'package:financce/core/styling/app_styles.dart';
import 'package:financce/core/styling/widgets/top_profile_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageScreen extends StatefulWidget {


  const HomePageScreen({ 
    super.key, 
  });

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  IconData? get iconData => null;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          SizedBox(height: 50.h),
          SizedBox(height: 20.h),
          TopProfileNotifications(),
          SizedBox(height: 20.h),
          CustomCarouselWidget(),
          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.sp,
                crossAxisSpacing: 16.sp,
              ),
              children: [
                Container(
                  padding: EdgeInsets.all(16.sp),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 10.h,),
                        Container(
                          width: 48.w,
                          height: 48.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16.r)
                          ),
                          child: 
                          Icon(Icons.share,size: 20.sp,
                          color: AppColors.PrimaryColors,
                          ),
                        ),
                        SizedBox(height: 12.h,),
                        Text('share',style: AppStyles.black15bold,),
                        SizedBox(height: 8.h,),
                        Text("take acc to acc"),
                      ],
                    ),),

                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 10.h,),
                        Container(
                          width: 55.w,
                          height: 55.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16.r)
                          ),
                          child: 
                          Icon(Icons.send,size: 20.sp,
                          color: AppColors.PrimaryColors,
                          ),
                        ),
                        SizedBox(height: 12.h,),
                        Text('Send money',style: AppStyles.black15bold,),
                        SizedBox(height: 8.h,),
                        Text("take acc to acc"),
                      ],
                    ),
                    
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
