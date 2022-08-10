import 'dart:async';
import 'package:flutter/material.dart';
import './DummyScreen.dart';
import 'home.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                SecondScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Center(
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Fast Travel',
                  textStyle: const TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w600,
                  ),
                  speed: const Duration(milliseconds: 200),
                ),
              ],
            )
        )
    );
  }
}

