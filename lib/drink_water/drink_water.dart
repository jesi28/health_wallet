import 'package:flutter/material.dart';

class DrinkWater extends StatefulWidget {
  const DrinkWater({super.key});

  @override
  State<DrinkWater> createState() => _DrinkWaterState();
}

class _DrinkWaterState extends State<DrinkWater> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Stack(
        children: [
          Positioned(top: 4, right: 8, child: Image.asset('assets/cloud1.png')),
          Positioned(
            top: 220,
            left: 8,
            child: Image.asset('assets/cloud2.png'),
          ),
          Column(
            children: [
              SizedBox(height: 55),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(width: 70),
                  Text(
                    "Drink Water Glass",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 65),
              Row(
                children: [
                  SizedBox(width: 19),
                  Image.asset('assets/text.png'),
                  SizedBox(width: 8),
                  Image.asset('assets/number_name.png'),
                  SizedBox(width: 10),
                  Image.asset('assets/glass.png'),
                ],
              ),
              SizedBox(height: 30),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  child: const WaterGoalBottomSheet(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WaterGoalBottomSheet extends StatelessWidget {
  const WaterGoalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 120,
          width: 800,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,

            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 15),
              Container(
                height: 4,
                width: 70,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              SizedBox(height: 25),
              Text(
                "Date & Time",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Theme.of(context).colorScheme.surface,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "16 June 2023",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Goal Preview',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 120,
                    width: 120,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        CircularProgressIndicator(
                          value: 0.45,
                          strokeWidth: 10,
                          backgroundColor:
                              Theme.of(context).colorScheme.primaryContainer,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        Center(
                          child: Text(
                            "67%",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 30),
            Column(
              children: [
                Card(
                  elevation: 1,
                  child: Container(
                    height: 92,
                    width: 153,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.outlineVariant,
                      ),
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Athlete Preformance',
                                maxLines: 2,
                                style: Theme.of(
                                  context,
                                ).textTheme.headlineLarge?.copyWith(
                                  color:
                                      Theme.of(
                                        context,
                                      ).colorScheme.outlineVariant,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "-60%",
                                style: Theme.of(
                                  context,
                                ).textTheme.headlineLarge?.copyWith(
                                  color: Theme.of(context).colorScheme.error,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 15,
                          child: Image.asset("assets/man_run.png"),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  elevation: 1,
                  child: Container(
                    height: 92,
                    width: 153,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.outlineVariant,
                      ),
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Cognitive Performance',
                                maxLines: 2,
                                style: Theme.of(
                                  context,
                                ).textTheme.headlineLarge?.copyWith(
                                  color:
                                      Theme.of(
                                        context,
                                      ).colorScheme.outlineVariant,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "-50%",
                                style: Theme.of(
                                  context,
                                ).textTheme.headlineLarge?.copyWith(
                                  color: Theme.of(context).colorScheme.error,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 4,
                          top: 15,
                          child: Image.asset("assets/thinking.png"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        Center(
          child: SizedBox(
            height: 50,
            width: 200,
            child: FilledButton(
              onPressed: () {},
              child: Text(
                'Goal Not Archieve',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: Theme.of(context).colorScheme.surface,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
