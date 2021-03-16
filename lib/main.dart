import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'mino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'TETRIS', home: MainPage());
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  double count = 0;
  bool isPlaying = false;
  // Mino mino = Mino();

  Future<void> mainLoop() async {
    isPlaying = true;
    while(isPlaying){
      await Future.delayed(Duration(seconds: 1));
      setState(() {
        count++;
        print('$count');
      });
      if(count == 5){
        setState(() {
          count = 0;
          isPlaying = false;
        });
          isPlaying = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (isPlaying) {
            isPlaying = false;
          } else {
            mainLoop();
          }
        },
      ),
      body: CustomPaint(
        size: Size(100, 100),
        painter: Mino(x: 200,y: count,isPlaying),
      ),
    );
  }
}
