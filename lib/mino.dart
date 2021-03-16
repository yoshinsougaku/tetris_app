import 'package:flutter/material.dart';

class Mino extends CustomPainter {
  double baseL = 30;
  double baseP = 10;
  final double y;
  final double x;
  bool isPlaying;
  double k;


  Mino({@required this.x, @required this.y,this.isPlaying});

  void tPaintCell(Canvas canvas,Paint paint,double x,double y){
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

  void paintCell(Canvas canvas,Paint paint,k){
    canvas.drawRect(Rect.fromLTWH(x, y*baseL, baseL, baseL), paint);

  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Colors.red;

    while(isPlaying) {
      paintCell(canvas, paint,k);
      if(isPlaying == false){
        k = y;
        paintCell(canvas, paint,k);
      }
    } // tPaintCell(canvas, paint, 2, 10);
    // oPaintCell(canvas, paint, 5, 3);
    // zPaintCell(canvas, paint, 8, 8);
    // iPaintCell(canvas, paint, 4, 12);
    // lPaintCell(canvas, paint, 6, 15);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
