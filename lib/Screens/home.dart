import "package:flutter/material.dart";
import '../widgets/NavBar.dart';
import '../Screens/FIrstScreen.dart';
import './drawer.dart';
class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  final tabs=[
    FirstScreen(),
    // Center(child: Text("Helloi"),),
    Center(child: Text("Under Development"),),
    Center(child: Text("Under Development"),)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Fast Travel"),backgroundColor: Colors.blue),
  drawer: drawer(),
      body:tabs[current_index],
        bottomNavigationBar:Navbar(),

    );
  }
}