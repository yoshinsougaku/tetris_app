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
        body: CustomPaint(
          size: Size(100,100),
          painter: Mino(),
        )
      ),
    );
  }
}

class Mino extends CustomPainter {
  double baseL = 30;
  double baseP = 10;
@override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Colors.red;
    //T
    canvas.drawRect(Rect.fromLTWH(220,450,baseL,baseL), paint);
    canvas.drawRect(Rect.fromLTWH(220-baseL,450,baseL,baseL), paint);
    canvas.drawRect(Rect.fromLTWH(220+baseL,450,baseL,baseL), paint);
    canvas.drawRect(Rect.fromLTWH(220,450-baseL,baseL,baseL), paint);
//sikaku
    canvas.drawRect(Rect.fromLTWH(120,450,baseL,baseL), paint);
    canvas.drawRect(Rect.fromLTWH(120-baseL,450,baseL,baseL), paint);
    canvas.drawRect(Rect.fromLTWH(120,450-baseL,baseL,baseL), paint);
    canvas.drawRect(Rect.fromLTWH(120-baseL,450-baseL,baseL,baseL), paint);
//tyokusenn
  canvas.drawRect(Rect.fromLTWH(220,250,baseL,baseL), paint);
  canvas.drawRect(Rect.fromLTWH(220+baseL,250,baseL,baseL), paint);
  canvas.drawRect(Rect.fromLTWH(220+baseL+baseL,250,baseL,baseL), paint);
  canvas.drawRect(Rect.fromLTWH(220+baseL+baseL+baseL,250,baseL,baseL), paint);
//naname
  canvas.drawRect(Rect.fromLTWH(220,650,baseL,baseL), paint);
  canvas.drawRect(Rect.fromLTWH(220+baseL,650,baseL,baseL), paint);
  canvas.drawRect(Rect.fromLTWH(220+baseL,650+baseL,baseL,baseL), paint);
  canvas.drawRect(Rect.fromLTWH(220+baseL+baseL,650+baseL,baseL,baseL), paint);

//yoko3
  canvas.drawRect(Rect.fromLTWH(320,550,baseL,baseL), paint);
  canvas.drawRect(Rect.fromLTWH(320+baseL,550,baseL,baseL), paint);
  canvas.drawRect(Rect.fromLTWH(320+baseL+baseL,550,baseL,baseL), paint);
  canvas.drawRect(Rect.fromLTWH(320+baseL+baseL,550-baseL,baseL,baseL), paint);
}

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}