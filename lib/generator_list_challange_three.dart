import 'package:flutter/material.dart';
import 'package:flutter_platzi_app/card_three.dart';

class GeneratorListThree extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement list

    return

      Scaffold(
        appBar: AppBar(
          title: Text(
            "Desing",
            style: TextStyle(
            fontFamily: "Lato",
            fontWeight: FontWeight.bold,
            fontSize: 20.0
          ),
          ),
          centerTitle: true,
        ),
        body:  Container(
                margin: EdgeInsets.only(
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
            );
  }
}
