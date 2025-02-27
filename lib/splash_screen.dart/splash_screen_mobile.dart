import 'package:flutter/material.dart';

class SplashScreenMobile extends StatefulWidget {
  const SplashScreenMobile({super.key});

  @override
  State<SplashScreenMobile> createState() => _SplashScreenMobileState();
}

class _SplashScreenMobileState extends State<SplashScreenMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 157,
                  height: 171,
                  child: Image.asset('assets/waterdroplet.png'),
                ),
                Text(
                  'Drop Water Tracker',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'Stay hydrated and track your',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'daily water intake',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: 42,
                  height: 18,
                  child: Image.asset('assets/Loading.png'),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),

          Positioned(
            top: 639,
            left: -131,
            child: SizedBox(
              height: 251,
              width: 650,
              child: Image.asset('assets/decoration1.png'),
            ),
          ),
          Positioned(
            top: 680,
            left: -16.27,

            child: Transform.rotate(
              angle: -0.01,
              child: SizedBox(
                height: 203.28,
                width: 503.36,
                child: Image.asset('assets/decoration2.png', fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
