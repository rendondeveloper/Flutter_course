import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platzi_app/generator_list_challange_three.dart';
import 'package:flutter_platzi_app/report.dart';
import 'profile.dart';
import 'search.dart';
import 'home_trips.dart';

class PlatziCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Kike app',
        theme: new ThemeData(
            primaryColor: Colors.blue
        ),
        home:   Scaffold(
          bottomNavigationBar: CupertinoTabScaffold(
            tabBar: CupertinoTabBar(
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home, color: Colors.blue),
                      activeIcon: Icon(Icons.home, color: Colors.red)),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.change_history, color: Colors.blue),
                      activeIcon: Icon(Icons.change_history, color: Colors.red),
                      title: Text(
                          "Reto 1",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                      )
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.change_history, color: Colors.blue),
                      activeIcon: Icon(Icons.change_history, color: Colors.red),
                      title: Text(
                      "Reto 2",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.change_history, color: Colors.blue),
                      activeIcon: Icon(Icons.change_history, color: Colors.red),
                      title: Text(
                        "Reto 3",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ))
                ]),
            tabBuilder: (BuildContext context, int index){
              switch(index){
                case 0:
                  return CupertinoTabView(
                    builder: (BuildContext context) => Home(),
                  );
                  break;
                case 1:
                  return CupertinoTabView(
                    builder: (BuildContext context) =>  Report(),
                  );
                  break;
                case 2:
                  return CupertinoTabView(
                    builder: (BuildContext context) => GeneratorListThree(),
                  );
                  break;
                case 3:
                  return CupertinoTabView(
                    builder: (BuildContext context) => Profile(),
                  );
                  break;
              }
            },
          ),
        )
    );
  }
}
