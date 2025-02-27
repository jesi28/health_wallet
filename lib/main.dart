import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:go_router/go_router.dart';
import 'package:health_wallet/common/constants.dart';
import 'package:health_wallet/common/ui_helper';
import 'package:health_wallet/create_account/view/create_account_mobile.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
=======
import 'package:health_wallet/common/constants.dart';
import 'package:health_wallet/common/ui_helper.dart';
import 'package:health_wallet/login/views/login_mobile.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp( MyApp());
>>>>>>> 90ce72ab0a9b710e01f8cb6d114cc8a3f4d21299
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
<<<<<<< HEAD
  final GoRouter _router = GoRouter(
    initialLocation: '/account',
    routes: [
      GoRoute(
        path: '/account',
        builder: (context, state) => const CreateAccount(),
      ),
=======

  final GoRouter _router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => LoginMobile(),
      ),
  
>>>>>>> 90ce72ab0a9b710e01f8cb6d114cc8a3f4d21299
    ],
  );

  @override
  Widget build(BuildContext context) {
    UiHelper uiHelper = UiHelper();
    return MaterialApp.router(
<<<<<<< HEAD
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
      theme: uiHelper.themeData(Constants.themeConfig.LIGHT),
=======
      builder: (context, child) => ResponsiveBreakpoints.builder(
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
>>>>>>> 90ce72ab0a9b710e01f8cb6d114cc8a3f4d21299
    );
  }
}
