import 'package:financce/core/featuers/auth/login_screen.dart';
import 'package:financce/core/featuers/auth/widgets/otp_verification.dart';
import 'package:financce/core/featuers/auth/widgets/register_screen.dart';
import 'package:financce/core/featuers/main_screen/main_screen.dart';
import 'package:financce/core/featuers/on_boarding_screen.dart';
import 'package:financce/core/routing/app_routes.dart';
import 'package:go_router/go_router.dart';

class RouterGenrationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.OnBoardingScreen,
    routes: [

      GoRoute(
        path: AppRoutes.OnBoardingScreen,
        name: AppRoutes.OnBoardingScreen,
        builder:(context, state) => const OnBoardingScreen()),

      GoRoute(
        path: AppRoutes.loginscreen,
        name: AppRoutes.loginscreen,
        builder:(context, state) => const LoginScreen()),
         GoRoute(
        path: AppRoutes.registerscreen,
        name: AppRoutes.registerscreen,
        builder:(context, state) =>  const  RegisterScreen()),
        GoRoute(
        path: AppRoutes.OtpVerification,
        name: AppRoutes.OtpVerification,
        builder:(context, state) =>  const  OtpVerification()),
        GoRoute(
        path: AppRoutes.MainScreen,
        name: AppRoutes.MainScreen,
        builder:(context, state) =>  const  MainScreen()),

    ]
  );
}
