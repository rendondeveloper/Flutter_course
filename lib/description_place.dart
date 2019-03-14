import 'package:flutter/material.dart';
import 'button.dart';

class DescriptionPlace extends StatelessWidget {

  final  String namePlace;
  final int startNumber;
  final String descriptionPlace;
  final int topStart = 5;
  Row rowStart;

  DescriptionPlace(this.namePlace, this.startNumber, this.descriptionPlace);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final start_border = Container(
      margin: EdgeInsets.only(top: 350.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final start_half = Container(
      margin: EdgeInsets.only(top: 305.0, right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final start_fuell = Container(
      margin: EdgeInsets.only(top: 305.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final title_starts = Row(children: <Widget>[
      Container(
        margin: EdgeInsets.only(
          top: 300.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Text(this.namePlace,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                color: Colors.black)),
      ),
      Row(children: <Widget>[
        start_fuell,
        start_fuell,
        start_fuell,
        start_fuell,
        start_fuell
      ],)
    ]);

    final description_place = Container(
      margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
      child: Text(this.descriptionPlace,
          style: TextStyle(
              fontFamily: "Lato",
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey),
          textAlign: TextAlign.justify),
    );

    final title_starts_description = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[title_starts, description_place, Button("Navigate")],
    );

    return title_starts_description;
  }


}
