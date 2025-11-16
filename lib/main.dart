import 'package:financce/core/featuers/on_boarding_screen.dart';
import 'package:financce/core/routing/router_genration_config.dart';
import 'package:financce/core/styling/theme_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          theme: AppTheme.lightTheme,
          routerConfig: RouterGenrationConfig.goRouter,
        );
      },
      child: const  OnBoardingScreen());
  }
}

