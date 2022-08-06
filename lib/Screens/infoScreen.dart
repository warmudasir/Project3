import 'package:fasttravel/widgets/NavBar.dart';
import 'package:flutter/material.dart';
import '../widgets/Recommendation.dart';
import './PaymentandCOnfirmationScreen.dart';
class transaction extends StatelessWidget {
  const transaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Fast Travel"),backgroundColor: Colors.blue),
      body: Container(
        child:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(

            children:[
              Reccomendationlist(),
              SizedBox(height: 10),
              Text("Choose By Yourself",style: TextStyle(fontWeight: FontWeight.bold),),
              Container
              (
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 300,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 250,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 250,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 250,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20)),
                    ),

                  ],
                ),
              ),
            ),
              ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ConfirmationScreen(),));}, child: Text("Payment")),
          ]),
        ),
      ),
      bottomNavigationBar: Navbar(),

    );
  }
}
