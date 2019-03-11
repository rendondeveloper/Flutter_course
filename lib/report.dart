import 'package:flutter/material.dart';

class Report extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final colorBackground = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(height: 30, color: Colors.black26),
          Container(height: 30, color: Colors.black54),
        ],
    );

    final text = Text(
      "Texto reto 2",
      style: TextStyle(
          fontFamily: "Lato",
          fontSize: 36.0,
          fontWeight: FontWeight.bold,
          color: Colors.white),
    );

    final textAndGradient = Stack(
      children: <Widget>[colorBackground, Center( child : text)],
    );

    final background = Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/img/photo_4.jpg"))),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Reto 2"),
      ),
      body: Stack(
        children: <Widget>[background, textAndGradient],
      ),
    );
  }
}
