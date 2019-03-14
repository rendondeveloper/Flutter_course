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
    final double _widthCard = _width/1.2;
    final double _widthDataCard = _width/1.5;
    final double _heightImage = 150;
    final double _heightInfo = 80;
    final double _marginTopInfo = _heightImage;

    final imagePlace =
    Center(
      child:
          Container(
            width: _widthCard,
            height: _heightImage,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(this.pathImage),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                  color: Colors.black45,
                  blurRadius: 20.0,
                  offset: Offset(1, 0.2)
            )],
          )
    )
    );

    final textPlace = Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        this.namePlace,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20.0
        ),
      ),
    );

    final  messagePlace = Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(
          top: 5.0,
          left: 20.0
      ),
      child: Text(
        this.message,
        style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.normal,
            fontSize: 10.0
        ),
      ),
    );

    final  stepsPlace = Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(
        top: 5.0,
        left: 20.0
      ),
      child: Text(
        "Steps " + this.numberSteps,
        style: TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
            fontSize: 16.0
        ),
      ),
    );

    final columData =
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          verticalDirection: VerticalDirection.down,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            textPlace,
            messagePlace,
            stepsPlace
          ],
    );

    final formsData =
    Center(
      child:
        Container(
          alignment: Alignment.center,
          width: _widthDataCard,
          height: _heightInfo,
          child: columData,
          margin: EdgeInsets.only(
            top: _marginTopInfo - (_marginTopInfo * .25)
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 15.0,
                  offset: Offset(0.2, 0.9)
          )]
        )));

    final buttonLike =
    Center(
    child: Container(
      height: 30.0,
      width: 30.0,
      margin: EdgeInsets.only(
        top: _heightImage + (_heightInfo / 4 ),
            left: _widthDataCard - (_widthDataCard * .30)
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.orange
      ),
      child: Icon(
          Icons.favorite,
          color: Colors.white,
          size: 20.0,
      ),
    ));



    return
      Container(
        margin: EdgeInsets.only(
          top: 25
        ),
        child:  Stack(
          children: <Widget>[
            imagePlace,
            formsData,
            buttonLike
          ],
        )
      );

  }
}