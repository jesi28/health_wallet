import 'package:flutter/material.dart';
<<<<<<< HEAD

import 'package:go_router/go_router.dart';
import 'package:health_wallet/common/constants.dart';
import 'package:health_wallet/common/ui_helper';
import 'package:health_wallet/create_account/view/create_account_mobile.dart';
import 'package:health_wallet/verification/verification.dart';
import 'package:health_wallet/verification/verified_page.dart';



import 'package:health_wallet/login/views/login_mobile.dart';
import 'package:health_wallet/splash_screen.dart/splash_screen_mobile.dart';

import 'package:responsive_framework/responsive_framework.dart';
=======


>>>>>>> f44d08cdf7cfcd40d23ed61d128074303c8b3ba4

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

<<<<<<< HEAD
  final GoRouter _router = GoRouter(

    initialLocation: '/verified',
    routes: [
      GoRoute(
        path: '/account',
        builder: (context, state) => const CreateAccount(),
      ),
      GoRoute(
        path: '/verify',
        builder: (context, state) => const VerificationPage(),
      ),
      GoRoute(
        path: '/verified',
        builder: (context, state) => const VerifiedPage(),
      ),
       GoRoute(
        path: '/login',
        builder: (context, state) => const LoginMobile(),
      ),
      GoRoute(
        path: '/splash',
        builder: (context, state) => SplashScreenMobile(),
      ),
    ],


  );
  @override
  Widget build(BuildContext context) {
    UiHelper uiHelper = UiHelper();
    return MaterialApp.router(

      builder:
          (context, child) => ResponsiveBreakpoints.builder(
            child: child!,
            breakpoints: [
              const Breakpoint(start: 375, end: 450, name: MOBILE),
              const Breakpoint(start: 451, end: 800, name: TABLET),
              const Breakpoint(start: 801, end: 1920, name: DESKTOP),
              const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
            ],
          ),
      routerConfig: _router,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: uiHelper.themeData(Constants.themeConfig.DARK),

    );
=======
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp.router();
>>>>>>> f44d08cdf7cfcd40d23ed61d128074303c8b3ba4
  }
}
