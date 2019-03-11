import 'package:flutter/material.dart';
import 'package:flutter_platzi_app/description_place.dart';
import 'package:flutter_platzi_app/header_appbar.dart';
import 'package:flutter_platzi_app/review_list.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Acapulco", 5, "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"),
            ReviewList()
          ],
        ),
        HeaderAppbar(),
      ],
    );
  }
}