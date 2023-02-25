import 'package:flutter/cupertino.dart';
import 'package:theme_change/features/home/home_screen.dart';
import 'package:theme_change/features/peofile/profile.dart';
import 'package:theme_change/features/search/search_screen.dart';

class AppBottomNavigation extends StatefulWidget {
  const AppBottomNavigation({Key? key}) : super(key: key);

  @override
  State<AppBottomNavigation> createState() => _AppBottomNavigationState();
}

class _AppBottomNavigationState extends State<AppBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      resizeToAvoidBottomInset: true,

        tabBar: CupertinoTabBar(
          onTap: (val){
            print(val);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.search)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.person)),
          ],
        ),
        tabBuilder: (context, index) {

          return IndexedStack(
            index: index,
            children: [
              CupertinoTabView(
                builder: (context) {
                  return HomeScreen();
                },
              ),
              CupertinoTabView(
                builder: (context) {
                  return SearchScreen();
                },
              ),
              CupertinoTabView(
                builder: (context) {
                  return ProfileScreen();
                },
              ),
            ],
          );
        });
  }
}
