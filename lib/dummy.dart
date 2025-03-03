import 'package:flutter/material.dart';

class HomePag extends StatefulWidget {
  const HomePag({super.key});

  @override
  State<HomePag> createState() => _HomePageState();
}

class _HomePageState extends State<HomePag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Good Morning,",

                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.outline,
                    fontWeight: FontWeight.w400,

                    fontSize: 14,
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: Theme.of(context).colorScheme.primary,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Text(
              "Aashifa Sheikh",
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                fontWeight: FontWeight.w600,

                fontSize: 20,
              ),
            ),
            SizedBox(height: 30),

            Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                width: 350,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/vector1.png',
                    ), // Add your image in assets folder
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '11:00 AM',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '200ml water (2 Glass)',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[700],
                            ),
                          ),
                          Positioned(
                            left: -105,
                            top: 0,
                            height: 14,
                            width: 20,
                            child: Image.asset(
                              'assets/Vector 2.png', // Add water drop image in assets
                              width: 400,
                              height: 106,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Add Your Goal',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 20,
                      height: 144,
                      width: 200,
                      child: Image.asset(
                        'assets/drop.png', // Add water drop image in assets
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
