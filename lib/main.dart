import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:health_wallet/analysis/analysis_page.dart';
import 'package:health_wallet/common/constants.dart';
import 'package:health_wallet/common/ui_helper.dart';
import 'package:health_wallet/create_account/view/create_account_mobile.dart';

import 'package:health_wallet/home/home_page.dart';

import 'package:health_wallet/goal/goal_page.dart';

import 'package:health_wallet/onboarding/onboarding_screen.dart';
import 'package:health_wallet/profile/edit_profile_page.dart';

import 'package:health_wallet/verification/verification.dart';
import 'package:health_wallet/verification/verified_page.dart';

import 'package:health_wallet/login/views/login_mobile.dart';
import 'package:health_wallet/splash_screen.dart/splash_screen_mobile.dart';

import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    initialLocation: "/home",
    routes: [
      GoRoute(path: '/account', builder: (context, state) => CreateAccount()),
      GoRoute(path: '/goal', builder: (context, state) => GoalPage()),

      GoRoute(
        path: '/verify',
        builder: (context, state) => const VerificationPage(),
      ),
      GoRoute(
        path: '/verified',
        builder: (context, state) => const VerifiedPage(),
      ),
      GoRoute(path: '/profile', builder: (context, state) => EditProfilePage()),
      GoRoute(path: '/login', builder: (context, state) => const LoginMobile()),
      GoRoute(
        path: '/splash',
        builder: (context, state) => SplashScreenMobile(),
      ),

      GoRoute(path: '/home', builder: (context, state) => HomePage()),

      GoRoute(
        path: '/analysis',
        builder: (context, state) => const AnalysisPage(),
      ),

      GoRoute(
        path: '/onboard',
        builder: (context, state) => OnboardingScreen(),
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
  }
}
