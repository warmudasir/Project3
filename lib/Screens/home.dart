import "package:flutter/material.dart";
import '../widgets/NavBar.dart';
import 'infoScreen.dart';
import './drawer.dart';
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Fast Travel"),backgroundColor: Colors.blue),
  drawer: drawer(),
      body:Column(children: [
          Container(
            width: double.infinity,
            height: 150,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                TextField(decoration: InputDecoration(
                  hintText: ("Enter your location"),
                  border:OutlineInputBorder(),
                ),),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: ("Enter your destination"),
                    border: OutlineInputBorder(),
                  ),
                ),
                ElevatedButton(onPressed:(){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const transaction()),
                );}, child: Text("Search"),style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue),),),

              ],
            ),
          )
        ],),

      bottomNavigationBar:Navbar()
    );
  }
}