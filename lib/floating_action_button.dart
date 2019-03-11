import 'package:flutter/material.dart';

class FloatingActionButtonCustom extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonCustom();
  }

}


class _FloatingActionButtonCustom extends State<FloatingActionButtonCustom>{
  void onPressedFav(){}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        Icons.favorite_border
      ),
    );
  }

}