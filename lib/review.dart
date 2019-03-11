import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  String path = "";
  String userName = "";
  String detail = "";
  String comment = "";

  Review(this.path, this.userName, this.detail, this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(path))
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
          this.userName,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 17.0,
            fontFamily: "Lato"
          ),
      ),
    );

    final details = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        this.detail,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 10.0,
            fontFamily: "Lato",
            color: Colors.grey
        ),
      ),
    );

    final comments = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        this.comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
            fontFamily: "Lato"
        ),
      ),
    );


    final userDeatil = Container(
                        margin: EdgeInsets.only(
                            top: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            userName,
                            details,
                            comments
                          ],
                        ),
                      );

    return Row (
      children: <Widget>[
      photo,
      userDeatil
    ],);
  }
}