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
      home: MainPage()
    );
  }
}

class Mino extends CustomPainter {
  double baseL = 30;
  double baseP = 10;

  void tPaintCell(Canvas canvas,Paint paint,double x,double y,){
    canvas.drawRect(Rect.fromLTWH(x*baseL,y*baseL,baseL,baseL), paint);
    canvas.drawRect(Rect.fromLTWH(x*baseL,y*baseL-baseL,baseL,baseL), paint);
    canvas.drawRect(Rect.fromLTWH(x*baseL-baseL,y*baseL,baseL,baseL), paint);
    canvas.drawRect(Rect.fromLTWH(x*baseL+baseL,y*baseL,baseL,baseL), paint);
  }

  void oPaintCell(Canvas canvas,Paint paint,double x,double y){
    canvas.drawRect(Rect.fromLTWH(x*baseL,y*baseL,baseL,baseL), paint);
    canvas.drawRect(Rect.fromLTWH(x*baseL-baseL,y*baseL,baseL,baseL), paint);
    canvas.drawRect(Rect.fromLTWH(x*baseL,y*baseL-baseL,baseL,baseL), paint);
    canvas.drawRect(Rect.fromLTWH(x*baseL-baseL,y*baseL-baseL,baseL,baseL), paint);
  }

  void zPaintCell(Canvas canvas,Paint paint,double x,double y){
    canvas.drawRect(Rect.fromLTWH(x*baseL,y*baseL,baseL,baseL), paint);
    canvas.drawRect(Rect.fromLTWH(x*baseL+baseL,y*baseL,baseL,baseL), paint);
    canvas.drawRect(Rect.fromLTWH(x*baseL+baseL,y*baseL+baseL,baseL,baseL), paint);
    canvas.drawRect(Rect.fromLTWH(x*baseL+baseL+baseL,y*baseL+baseL,baseL,baseL), paint);
  }

  void iPaintCell(Canvas canvas,Paint paint,double x,double y){
    canvas.drawRect(Rect.fromLTWH(x*baseL,y*baseL,baseL,baseL), paint);
    canvas.drawRect(Rect.fromLTWH(x*baseL+baseL,y*baseL,baseL,baseL), paint);
    canvas.drawRect(Rect.fromLTWH(x*baseL+baseL+baseL,y*baseL,baseL,baseL), paint);
    canvas.drawRect(Rect.fromLTWH(x*baseL+baseL+baseL+baseL,y*baseL,baseL,baseL), paint);
  }

  void lPaintCell(Canvas canvas,Paint paint,double x,double y){
    canvas.drawRect(Rect.fromLTWH(x*baseL+baseL,y*baseL-baseL,baseL,baseL), paint);
    canvas.drawRect(Rect.fromLTWH(x*baseL+baseL,y*baseL,baseL,baseL), paint);
    canvas.drawRect(Rect.fromLTWH(x*baseL+baseL+baseL,y*baseL,baseL,baseL), paint);
    canvas.drawRect(Rect.fromLTWH(x*baseL+baseL+baseL+baseL,y*baseL,baseL,baseL), paint);
  }

@override
  void paint(Canvas canvas, Size size,) {
    Paint paint = Paint();
    paint.color = Colors.red;

    tPaintCell(canvas, paint, 2, 10);
    oPaintCell(canvas, paint, 5, 3);
    zPaintCell(canvas, paint, 8, 8);
    iPaintCell(canvas, paint, 4, 12);
    lPaintCell(canvas, paint, 6, 15);
}

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int start = 10;
  int current = 10;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomPaint(
          size: Size(100,100),
          painter: Mino(),
        ),
    );
  }

}