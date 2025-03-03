import 'package:flutter/material.dart';

class HeartRateCard extends StatelessWidget {
  final int heartRate;

  const HeartRateCard({super.key, required this.heartRate});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        width: 170,
        height: 340,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
           boxShadow: [
                        BoxShadow(
                          // ignore: deprecated_member_use
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: const Offset(0, 5),
                        ),
                      ],
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Heart',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                fontWeight: FontWeight.w700,

                fontSize: 20,
              ),
            ),
            const SizedBox(height: 30),
            Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  Icons.favorite_border,
                  size: 120,
                  color: Colors.red.shade300,
                ),
                Positioned(
                  top: 55,
                  child: SizedBox(
                    width: 70,
                    height: 30,
                    child: CustomPaint(painter: HeartbeatPainter()),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Container(
              width: double.infinity,
              height: 40,
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
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w700,

                fontSize: 20,
              ),
            ),
            Text(
              'bpm',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                fontWeight: FontWeight.w600,

                fontSize: 14,
              ),
            ),
          ],
        ),
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
          ..moveTo(0, size.height / 10)
          ..lineTo(size.width * 0.35, size.height * 0.1)
          ..lineTo(size.width * 0.5, size.height * 1)
          ..lineTo(size.width * 0.65, size.height * 0.1)
          ..lineTo(size.width, size.height / 10);

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
