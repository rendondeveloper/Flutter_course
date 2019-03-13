import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget{

  String nameAppBar;


  AppBarCustom(this.nameAppBar);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final iconAppBar =
    Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(
        top: 15, left: 20.0
      ),
      child:
        Icon(
          Icons.menu,
          color: Colors.white,
        )
    );

    final textAppBar = Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 15),
      child: Text(
        this.nameAppBar,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight:  FontWeight.bold,
          color: Colors.white
      ),
      ),
    );


    final appBar = Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.red,
        image: DecorationImage(
            image: AssetImage("assets/img/imagen_background_appbar.jpg"),
            fit: BoxFit.cover
        )
      ),
      child: Stack(
        children: <Widget>[
          iconAppBar,
          textAppBar
        ],
      )
    );

    return Stack(
      children: <Widget>[
        appBar
    ],);
  }

}