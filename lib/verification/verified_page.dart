import 'package:flutter/material.dart';

class VerifiedPage extends StatefulWidget {
  const VerifiedPage({super.key});

  @override
  State<VerifiedPage> createState() => _VerifiedPageState();
}

class _VerifiedPageState extends State<VerifiedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/Completed_Icon.png"),
              Text(
                "You are Verified",
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontWeight: FontWeight.w700,

                  fontSize: 22,
                ),
              ),

              Text(
                "Congratulations to you. You are now Verified! Kindly proceed to log in",
                maxLines: 2,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Theme.of(context).colorScheme.outline,
                  fontWeight: FontWeight.w400,

                  fontSize: 14,
                ),
              ),

              SizedBox(
                width: double.maxFinite,
                height: MediaQuery.sizeOf(context).height * 0.06,
                child: FilledButton(
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
