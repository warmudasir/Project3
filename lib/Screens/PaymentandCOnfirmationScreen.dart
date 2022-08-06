import 'package:flutter/material.dart';
import '../widgets/NavBar.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Confirm your ride")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(5, 10, 5, 20),
            width: double.infinity,
            decoration:BoxDecoration(color: Colors.grey),
            height: 400,
          ),
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
          ElevatedButton(onPressed:() async {
    await LaunchApp.openApp(
    androidPackageName: 'com.android.chrome',
    iosUrlScheme: 'de.androidpit.app',
    appStoreLink: 'itms-apps://itunes.apple.com/us/app/pulse-secure/id945832041',
    // openStore: false
    );
    }, child: Text("G pay"))
        ],


      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
