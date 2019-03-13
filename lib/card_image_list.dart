import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 320,
      child: ListView(
        padding: EdgeInsets.all(20),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/photo_1.jpg"),
          CardImage("assets/img/photo_2.jpg"),
          CardImage("assets/img/photo_3.jpg"),
          CardImage("assets/img/photo_4.jpg"),
          CardImage("assets/img/photo_5.jpg")
        ],
      ),
    );
  }
}
