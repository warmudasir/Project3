import 'dart:ffi';

import 'package:flutter/material.dart';

class Reccomendationlist extends StatelessWidget {
  const Reccomendationlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Best Recommended Rides",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Container(
            width: double.infinity,
            height: 100,
            child: Card(
              elevation: 5,
              margin: EdgeInsets.all(6),
              child: Row(
                children: [
                  Container(
                      width: 130,
                      margin: EdgeInsets.fromLTRB(4, 0, 4, 0),
                      child: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/55/55283.png',fit:BoxFit.fill,)),SizedBox(width: 40,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Mini"),
                      Text(
                        "\$4",
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                  SizedBox(width: 40,),
                  Text("      Ola"),
                ],
              ),
            )),
     Container(
              width: double.infinity,
              height: 100,
              child: Card(
                elevation: 5,
                margin: EdgeInsets.all(6),
                child: Row(
                  children: [
                    Container(
                      width: 130,
                        margin: EdgeInsets.fromLTRB(4, 0, 4, 0),
                        child: Image.network(
                            'https://image.shutterstock.com/image-vector/suv-car-icon-creative-symbol-600w-1685976064.jpg',fit:BoxFit.fill,width: 100,)),
                    SizedBox(width: 40,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("suv"),
                        Text(
                          "\$7",
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                    SizedBox(width: 40,),
                    Text("   Uber"),
                  ],
                ),
              )),
        Container(
            width: double.infinity,
            height: 100,
            child: Card(
              elevation: 5,
              margin: EdgeInsets.all(6),
              child: Row(
                children: [
                  Container(
                      width: 130,
                      margin: EdgeInsets.fromLTRB(4, 0, 4, 0),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWo6WcOpdk5aO3tsBfayxJWvLSQTRyXFM56w&usqp=CAU',fit:BoxFit.fill,)),SizedBox(width: 40,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Bike"),
                      Text(
                        "\$2",
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                  SizedBox(width: 40,),
                  Text("      Rapido"),
                ],
              ),
            )),
      ],
    );
  }
}
