import 'package:flutter/material.dart';

class CardThree extends StatefulWidget{

  final String pathImage;
  final String name;
  final int years;
  final bool isSelect;

  CardThree(this.pathImage, this.name, this.years, this.isSelect);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CardThree(this.pathImage, this.name, this.years, this.isSelect);
  }

}

class _CardThree extends State<CardThree>{

  final String pathImage;
  final String name;
  final int years;
  bool isSelect;

  _CardThree(this.pathImage, this.name, this.years, this.isSelect);

  @override
  Widget build(BuildContext context) {

    final photo = Container(
      width: 80.0,
      height: 80.0,
      margin: EdgeInsets.only(
          top: 30.0,
          left: 5.0,
          right: 5.0
      ),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(this.pathImage))
      ),
    );

    final data = Container(
        height: 80.0,
        width: 150.0,
        padding: EdgeInsets.only(
            top: 35.0
        ),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name,
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Lato"
              ),
            ),
            Text(
              'Experience: $years ' + (this.years > 1 ? 'years' : 'year'),
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
              ),
            )
          ],
        )
    );


    final iconCard =
    GestureDetector(
      onTap: (){
        setState(() {
          this.isSelect = !this.isSelect;
        });
      },
      child: Container(
        width: 40,
        height: 40,
        margin: EdgeInsets.only(
            top: 30.0,
            left: 40.0
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: this.isSelect ? Colors.red : Colors.grey,
        ),
        child: Icon(
          Icons.email,
          color:this.isSelect ?  Colors.white :  Colors.black45,
        ),

      ),
    );

    final card = Row(
      children: <Widget>[
        photo,
        data,
        iconCard
      ],
    );

    return card;
  }

}