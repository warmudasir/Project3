import 'package:fasttravel/widgets/NavBar.dart';
import 'package:flutter/material.dart';
import '../widgets/Recommendation.dart';
import './PaymentandCOnfirmationScreen.dart';
import '../Screens/FIrstScreen.dart';
class transaction extends StatefulWidget {
  const transaction({Key? key}) : super(key: key);

  @override
  State<transaction> createState() => _transactionState();
}

class _transactionState extends State<transaction> {
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
                      child:Text("Ola",style:TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize:25),),padding: EdgeInsets.all(10),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 250,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20)),
                      child:Text("Uber",style:TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize:25),),padding: EdgeInsets.all(10),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 250,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20)),
                      child:Text("Rapido",style:TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize:25),),padding: EdgeInsets.all(10),
                    ),

                  ],
                ),
              ),
            ),
              ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ConfirmationScreen(),));}, child: Text("Payment")),
          ]),
        ),
      ),
      bottomNavigationBar: Navbar()

    );
  }
}
