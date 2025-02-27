import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:health_wallet/common/constants.dart';
import 'package:health_wallet/common/ui_helper';
import 'package:health_wallet/create_account/view/create_account_mobile.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GoRouter _router = GoRouter(
    initialLocation: '/account',
    routes: [
      GoRoute(
        path: '/account',
        builder: (context, state) => const CreateAccount(),
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
      theme: uiHelper.themeData(Constants.themeConfig.LIGHT),
    );
  }
}
