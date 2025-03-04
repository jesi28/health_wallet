import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class GoalPage extends StatefulWidget {
  const GoalPage({super.key});

  @override
  State<GoalPage> createState() => _GoalPageState();
}

int _selectedNumber = 1;

class _GoalPageState extends State<GoalPage> {
  @override
  Widget build(BuildContext context) {
    String selectedUnit = "Number of glass";
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
                    "Set Your Goal",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Stack(
                children: [
                  SizedBox(
                    height: 85,
                    width: 77,
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                           ),
                        child: NumberPicker(
                          infiniteLoop: true,
                          value: _selectedNumber,
                          minValue: 0,
                          maxValue: 20,

                          textStyle: TextStyle(
                            fontSize: 65,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.surface,
                          ),
                          itemHeight: 85,
                          itemWidth: 77,
                          axis: Axis.vertical,
                          onChanged: (value) {
                            setState(() {
                              _selectedNumber = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,

                    child: Container(width: 3, height: 80, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Container(
                width: 225,
                height: 42,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.outlineVariant,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: Theme.of(context).colorScheme.surface,
                ),
                child: DropdownButton<String>(
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                  value: selectedUnit,
                  items:
                      ["Number of glass", "Number of Liters"].map((
                        String value,
                      ) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 10,
                            ), // Adjust the space as needed
                            child: Text(value),
                          ),
                        );
                      }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      selectedUnit = newValue!;
                    });
                  },
                  underline: SizedBox(),
                  isExpanded: true,
                  dropdownColor: Theme.of(context).colorScheme.surface,
                ),
              ),

              const SizedBox(height: 60),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(50),
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
    List<Map<String, dynamic>> goals = [
      {"title": "Summer time", "glasses": "10 Glass", "emoji": "🌴"},
      {"title": "Sporty", "glasses": "7 Glass", "emoji": "🏀"},
      {"title": "Snow day", "glasses": "5 Glass", "emoji": "❄️"},
      {"title": "Child", "glasses": "4 Glass", "emoji": "🌈"},
    ];

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            height: 4,
            width: 70,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryFixed,
              borderRadius: BorderRadius.circular(7),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Water Goal",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "We prepared a lot of goals for you!",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Theme.of(context).colorScheme.outline,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 30),
          TextField(
            decoration: InputDecoration(
              hintText: "Search Template",
              prefixIcon: Icon(
                Icons.search_rounded,
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              filled: true,
              fillColor: Theme.of(context).colorScheme.surfaceBright,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              itemCount: goals.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.8,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 250,
                  height: 250,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:
                            Theme.of(context).colorScheme.surfaceContainerLow,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          goals[index]["title"],
                          style: Theme.of(
                            context,
                          ).textTheme.headlineSmall?.copyWith(
                            color: Theme.of(context).colorScheme.outline,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(height: 23),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              goals[index]["glasses"],
                              style: Theme.of(
                                context,
                              ).textTheme.headlineSmall?.copyWith(
                                color: Theme.of(context).colorScheme.outline,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(width: 50),
                            Text(
                              goals[index]["emoji"],
                              style: const TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
