import 'dart:math';
import 'package:flutter/material.dart';

class RoundedCircularProgressIndicator extends StatelessWidget {
  final double value;
  final Color color;
  final double strokeWidth;

  const RoundedCircularProgressIndicator({
    super.key,
    required this.value,
    required this.color,
    this.strokeWidth = 12.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: CustomPaint(
        painter: _CircularProgressPainter(
          value: value,
          color: color,
          strokeWidth: strokeWidth,
        ),
      ),
    );
  }
}

class _CircularProgressPainter extends CustomPainter {
  final double value;
  final Color color;
  final double strokeWidth;

  _CircularProgressPainter({
    required this.value,
    required this.color,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width / 2) - (strokeWidth / 2);

    final backgroundPaint = Paint()
      ..color = Colors.grey.shade300
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
    canvas.drawCircle(center, radius, backgroundPaint);

    final progressPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    double sweepAngle = 2 * pi * (value);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      sweepAngle,
      false,
      progressPaint,
    );
    double endAngle = -pi / 2 + sweepAngle;
    final endPointX = center.dx + radius * cos(endAngle);
    final endPointY = center.dy + radius * sin(endAngle);
    final endPoint = Offset(endPointX, endPointY);

    final endCircleRadius = strokeWidth;
    final endCirclePaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    canvas.drawCircle(endPoint, endCircleRadius, endCirclePaint);

    canvas.drawCircle(endPoint, endCircleRadius, borderPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
