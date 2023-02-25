import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theme_change/features/search/search_screen.dart';

import 'home_bloc.dart';

//region Home Screen
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
//endregion

class _HomeScreenState extends State<HomeScreen> {
  //region Build
  late HomeBloc homeBloc;
  //endregion
  //region Init
  @override
  void initState() {
    homeBloc = HomeBloc(context: context);
    super.initState();
  }
  //endregion
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(child: body()),
    );
  }


  //region Body
Widget body(){
    return ListView(
      children: [
        TextFormField(),
        SizedBox(height: 100,),

        Text("Hello"),
        SizedBox(height: 100,),

        CupertinoButton(
            color: Colors.green,
            child: Text("Home"), onPressed:(){
          var screen = SearchScreen();
          // var screen = const MyOrdersScreen();
          var route = MaterialPageRoute(builder: (context) => screen);
          Navigator.push(context, route).then((value) {
          });
        }),
        SizedBox(height: 100,),

        Text("Hello7887"),
        SizedBox(height: 100,),

        Text("Hello7887"),
        TextFormField(),


      ],
    );
}
//endregion




}
