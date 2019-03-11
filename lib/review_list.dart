import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Review("assets/img/avatar_dummy.jpg",  "Kika Garcia",   "10 Review and 5 Comments" ,  "The place is beautiful."),
        new Review("assets/img/avatar_dummy_2.jpg", "Kike Rendon",  "12 Review and 10 Comments" , "Is best place for swim."),
        new Review("assets/img/avatar_dummy_3.jpg", "Juan Perez",   "16 Review and 7 Comments" ,  "Rest like never."),
        new Review("assets/img/avatar_dummy_4.jpg", "Lucas Dorti",  "1 Review and  1 Comments" ,  "The place is beautiful."),
        new Review("assets/img/avatar_dummy_5.jpg", "Pedro Suarez", "2 Review and  2 Comments" ,  "Is best place for swim.")
      ],
    );
  }

}