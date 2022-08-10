import 'package:flutter/material.dart';
import 'dart:developer';
import '../Screens/home.dart';
int current_index=0;
class Navbar extends StatefulWidget {


  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {

  // void func(){
  //   print(current_index);
  // }
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      currentIndex: current_index,
      type:BottomNavigationBarType.shifting,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_activity),
          label: 'Activity',
          backgroundColor: Colors.green,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Account',
          backgroundColor: Colors.orange,
        ),

      ],
      onTap:(index){
        setState(() {
          current_index=index;
        });
      },
    );
  }
}
