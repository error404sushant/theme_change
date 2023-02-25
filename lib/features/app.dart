import 'package:flutter/material.dart';
import 'package:theme_change/features/bottom_navigation.dart';
import 'package:theme_change/features/home/home_screen.dart';


class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      theme: ThemeData(
          fontFamily: "LatoRegular",
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      home: AppBottomNavigation(),
    );
    //endregion

  }
}

//region Over scroll blue color remove
class MyCustomScrollBehavior extends MaterialScrollBehavior {

  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
//endregion