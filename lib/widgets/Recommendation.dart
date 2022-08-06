import 'package:flutter/material.dart';

class Reccomendationlist extends StatelessWidget {
  const Reccomendationlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Text("Best Recommended Rides",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
          Container(
            width: double.infinity,
              height: 100,
              child: Card(
                elevation: 5,
            margin: EdgeInsets.all(6),
            child:Row(
              children: [
                Text("Picture of ride          "),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Name of the Ride"),
                    Text("\$Price",style: TextStyle(color: Colors.red),)
                  ],
                ),
                Text("      Offered BY"),
               
              ],
            ),
          )),
          Container(
              width: double.infinity,
              height: 100,
              child: Card(
                elevation: 5,
                margin: EdgeInsets.all(6),
                child:Row(
                  children: [
                    Text("Picture of ride          "),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Name of the Ride"),
                        Text("\$Price",style: TextStyle(color: Colors.red),)
                      ],
                    ),
                    Text("      Offered BY"),

                  ],
                ),
              )),
          Container(
              width: double.infinity,
              height: 100,
              child: Card(
                elevation: 5,
                margin: EdgeInsets.all(6),
                child:Row(
                  children: [
                    Text("Picture of ride          "),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Name of the Ride"),
                        Text("\$Price",style: TextStyle(color: Colors.red),)
                      ],
                    ),
                    Text("      Offered BY"),

                  ],
                ),
              )),
        ],

    );
  }
}
