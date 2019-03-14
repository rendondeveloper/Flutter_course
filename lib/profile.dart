import 'package:flutter/material.dart';
import 'package:flutter_platzi_app/card_profile.dart';
import 'package:flutter_platzi_app/card_profile_list.dart';
import 'package:flutter_platzi_app/profile_appbar.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
        return
          Stack(
            children: <Widget>[
              ProfileAppBar("Kike Rendon", "rendondeveloper@gmail.com", "assets/img/avatar_dummy_2.jpg"),
              CardProfileList()
            ],
          );


  }
}