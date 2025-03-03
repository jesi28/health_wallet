import 'package:flutter/material.dart';

class HeartRateScreen extends StatelessWidget {
  const HeartRateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: HeartRateCard(heartRate: 80)),
    );
  } 
}

class HeartRateCard extends StatelessWidget {
  final int heartRate;

  const HeartRateCard({super.key, required this.heartRate});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
           
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Heart',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 10),
          Stack(
            alignment: Alignment.center,
            children: [
              Icon(Icons.favorite_border, size: 60, color: Colors.red.shade300),
              Positioned(
                top: 20,
                child: SizedBox(
                  width: 50,
                  height: 30,
                  child: CustomPaint(painter: HeartbeatPainter()),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 30,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: CustomPaint(painter: GraphPainter()),
          ),
          const SizedBox(height: 10),
          Text(
            '$heartRate',
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const Text(
            'bpm',
            style: TextStyle(fontSize: 12, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}

class HeartbeatPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint =
        Paint()
          ..color = Colors.blue
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke;

    final Path path =
        Path()
          ..moveTo(0, size.height / 2)
          ..lineTo(size.width * 0.75, size.height * 0.2)
          ..lineTo(size.width * 0.5, size.height * 0.8)
          ..lineTo(size.width * 0.75, size.height * 0.2)
          ..lineTo(size.width, size.height / 2);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class GraphPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint =
        Paint()
          ..color = Colors.blue.shade700
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke;

    final Path path =
        Path()
          ..moveTo(0, size.height * 0.8)
          ..lineTo(size.width * 0.2, size.height * 0.5)
          ..lineTo(size.width * 0.4, size.height * 0.7)
          ..lineTo(size.width * 0.6, size.height * 0.3)
          ..lineTo(size.width * 0.8, size.height * 0.6)
          ..lineTo(size.width, size.height * 0.4);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
