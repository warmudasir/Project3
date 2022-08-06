import 'package:flutter/material.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
class Dummy extends StatelessWidget {
  const Dummy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(child: Text("Gpay"),onPressed: () async {
        await LaunchApp.openApp(
          androidPackageName: 'net',
          iosUrlScheme: 'pul',
          appStoreLink: 'itms41',
          // openStore: false
        );
      },),
    );
  }
}
