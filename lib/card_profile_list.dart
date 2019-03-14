import 'package:flutter/material.dart';
import 'package:flutter_platzi_app/card_profile.dart';

class CardProfileList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        top: 235, bottom: 20
      ),
      child: ListView(
        children: <Widget>[
          CardProfile('assets/img/photo_1.jpg','Acapulco de juarez','Este es un lugar paradisiaco, para descansar.','123,123'),
          CardProfile('assets/img/photo_2.jpg','Acapulco de juarez','Este es un lugar paradisiaco, para descansar.','123,123'),
          CardProfile('assets/img/photo_3.jpg','Acapulco de juarez','Este es un lugar paradisiaco, para descansar.','123,123'),
          CardProfile('assets/img/photo_4.jpg','Acapulco de juarez','Este es un lugar paradisiaco, para descansar.','123,123'),
          CardProfile('assets/img/photo_5.jpg','Acapulco de juarez','Este es un lugar paradisiaco, para descansar.','123,123'),
        ],
      )
    );
  }
}