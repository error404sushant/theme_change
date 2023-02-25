import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theme_change/features/home/home_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile screen"),
      ),
      body: Center(child: body()),
    );
  }
  //region Body
  Widget body() {
    return CupertinoButton(
        color: Colors.green,

        child: Text("Profile"), onPressed:(){
      var screen = HomeScreen();
      // var screen = const MyOrdersScreen();
      var route = MaterialPageRoute(builder: (context) => screen);
      Navigator.push(context, route).then((value) {
      });

    });

  }
//endregion
}
