import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TETRIS',
      home: Scaffold(
        body: Center(
          child: CustomPaint(
            size: Size(100,100),
            painter: Mino(),
          ),
        )
      ),
    );
  }
}

class Mino extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.red;
    canvas.drawRect(Rect.fromLTWH(0,0,90,30), paint);
    canvas.drawRect(Rect.fromLTWH(30,-30,30,45), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}