import 'package:financce/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 41.h,
                  width: 41.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: Colors.transparent,
                    border: Border.all(color: Color(0xffE8ECF4), width: 1),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        GoRouter.of(context).pop(); 
                      },
                      child: IconButton(
                        onPressed: () {
                          GoRouter.of(context).pop();
                        },
                        icon: const Icon(Icons.arrow_back),
                        color: AppColors.PrimaryColors,
                      ),
                    ),
                  ),
                ),
              );
  }
}