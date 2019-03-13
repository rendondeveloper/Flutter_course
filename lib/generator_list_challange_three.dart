import 'package:flutter/material.dart';
import 'package:flutter_platzi_app/appbar_custom.dart';
import 'package:flutter_platzi_app/card_three.dart';

class GeneratorListThree extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement list

    return    Stack(
        children: <Widget>[
        Container(
                margin: EdgeInsets.only(
                  top: 45.0,
                    bottom: 40.0
                ),
                child: ListView(
                  padding: EdgeInsets.all(20),
                  children: <Widget>[
                    CardThree("assets/img/avatar_dummy.jpg",   "Kika Garcia", 7 , true),
                    CardThree("assets/img/avatar_dummy_2.jpg", "Kike Rendon", 0,  false),
                    CardThree("assets/img/avatar_dummy_3.jpg", "Juan Perez", 1 , true),
                    CardThree("assets/img/avatar_dummy_4.jpg", "Lucas Dorti", 3 , false),
                    CardThree("assets/img/avatar_dummy_5.jpg", "Pedro Suarez", 5 , true)
                  ],
                ),
              ),
          AppBarCustom("Estudiantes")
        ]
    );

  }
}
