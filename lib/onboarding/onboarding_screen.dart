import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:health_wallet/onboarding/widgets/onboarding_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  List<Map<String, String>> onboardingData = [
    {
      "image": "assets/women_drinking.png",
      "title": "Track your daily water intake with Us.",
      "description": "Achieve your hydration goals with a simple tap!",
    },
    {
      "image": "assets/droplet_man.png",
      "title": "Smart Reminders Tailored to You",
      "description":
          "Quick and easy to set your hydration goal & then track your daily water intake progress.",
    },
    {
      "image": "assets/water_bottle.png",
      "title": "Easy to Use – Drink, Tap, Repeat",
      "description":
          "Staying hydrated every day is easy with Drops Water Tracker.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemCount: onboardingData.length,
              itemBuilder: (context, index) {
                return OnboardingPage(
                  image: onboardingData[index]["image"]!,
                  title: onboardingData[index]["title"]!,
                  description: onboardingData[index]["description"]!,
                );
              },
            ),
          ),
          SmoothPageIndicator(
            controller: _pageController,
            count: onboardingData.length,
            effect: WormEffect(
              activeDotColor: Theme.of(context).colorScheme.primary,
              dotColor: Theme.of(context).colorScheme.outline,
              dotHeight: 8,
              dotWidth: 20,
              radius: 8,
            ),
          ),

          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: SizedBox(
              width: 320,
              height: MediaQuery.sizeOf(context).height * 0.06,
              child: FilledButton(
                style: FilledButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {
                  if (_currentPage == onboardingData.length - 1) {
                    context.go('/home');
                  } else {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                  }
                },
                child: Text(
                  _currentPage == onboardingData.length - 1
                      ? "GET STARTED"
                      : "NEXT",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
