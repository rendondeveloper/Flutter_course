import 'package:flutter/material.dart';

class CardProfile extends StatelessWidget{

  final String pathImage;
  final String namePlace;
  final String message;
  final String numberSteps;

  CardProfile(this.pathImage, this.namePlace, this.message, this.numberSteps);

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _widthCard = _width/2;

    final imagePlace =  Container(
      alignment: Alignment.center,
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        shape: BoxShape.rectangle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(this.pathImage),
            )
      ),
    );



    return imagePlace;
  }
}