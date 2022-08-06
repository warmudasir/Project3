import 'package:flutter/material.dart';
class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color:Theme.of(context).primaryColor,
            child: Center(child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(shape: BoxShape.circle,
                  image:DecorationImage(image: NetworkImage('https://i.pinimg.com/originals/3f/94/70/3f9470b34a8e3f526dbdb022f9f19cf7.jpg'),fit: BoxFit.fill)),
                ),
                SizedBox(height: 10),
                Text("Profile Picture")
              ],
            ),),
          ),ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
          ),ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          ListTile(
            leading: Icon(Icons.feedback_outlined),
            title: Text("Help and Support"),
          ),
          ListTile(
            leading:Icon(Icons.arrow_back),
            title: Text("Logout"),
          )
        ],
      ),
    );




  }
}
