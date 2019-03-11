import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platzi_app/report.dart';
import 'profile.dart';
import 'search.dart';
import 'home_trips.dart';

class PlatziCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.blue),
                activeIcon: Icon(Icons.home, color: Colors.red)),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.blue),
                activeIcon: Icon(Icons.search, color: Colors.red)),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.blue),
                activeIcon: Icon(Icons.person, color: Colors.red)),
            BottomNavigationBarItem(
                icon: Icon(Icons.report, color: Colors.blue),
                activeIcon: Icon(Icons.report, color: Colors.red))
          ],
        ),
        tabBuilder: (BuildContext context, int index){
          switch(index){
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => Home(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => Search(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => Profile(),
              );
              break;
             case 3:
              return CupertinoTabView(
                builder: (BuildContext context) => Report(),
              );
              break;
          }
        },
      ),
    );
  }
}
