import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  final String name;
  final String email;
  final String pathProfile;

  ProfileAppBar(this.name, this.email, this.pathProfile);

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;

    final textProfile = Container(
      alignment: Alignment.centerLeft,
      width: MediaQuery.of(context).size.width / 2,
      padding: EdgeInsets.only(left: 25.0),
      child: Text(
        "Hola!!",
        style: TextStyle(
            fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );

    final iconProfile = Container(
      alignment: Alignment.centerRight,
      width: MediaQuery.of(context).size.width / 2,
      padding: EdgeInsets.only(right: 25.0),
      child: Container(
        child: Icon(Icons.settings, color: Colors.black45, size: 15.0),
      ),
    );

    final textProfileAndIcon = Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.only(top: 40.0),
        child: Row(
          children: <Widget>[textProfile, iconProfile],
        ));

    final photoProfile = Container(
      height: 80.0,
      width: 80.0,
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(this.pathProfile))),
    );

    final photoWithMargin = Container(
      height: 90.0,
      width: 90.0,
      margin: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: photoProfile,
    );

    final nameProfile = Container(
      alignment: Alignment.centerLeft,
      width: (_width / 2) + (_width * .10),
      child: Text(
        this.name,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    final emailProfile = Container(
      alignment: Alignment.centerLeft,
      width: (_width / 2) + (_width * .10),
      margin: EdgeInsets.only(top: 5),
      child: Text(
        this.email,
        style: TextStyle(
          color: Colors.black45,
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
        ),
      ),
    );

    final dataNameAndEmail = Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(left: 20.0),
        child: Column(
          children: <Widget>[nameProfile, emailProfile],
        ));

    final photoAndNameAndEmail = Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Row(
        children: <Widget>[photoWithMargin, dataNameAndEmail],
      ),
    );

    final buttonShare =  Container(
        width: _width / 5,
        child:
        Container(
      height: 30.0,
      width: 30.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: Icon(
        Icons.bookmark,
        color: Colors.blue,
        size: 20,
      ),
    ));

    final buttonShopping =   Container(
        width: _width / 5,
        child:
        Container(
      height: 30.0,
      width: 30.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: Icon(
        Icons.date_range,
        color: Colors.blue,
        size: 20,
      ),
        ));

    final buttonAdd =  Container(
        width: _width / 5,
        child:
        Container(
      height: 45.0,
      width: 45.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: Icon(
        Icons.add,
        color: Colors.blue,
        size: 30,
      ),
    ));

    final buttonBox =
    Container(
        width: _width / 5,
        child:
        Container(
      height: 30.0,
      width: 30.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: Icon(
        Icons.inbox,
        color: Colors.blue,
        size: 20,
      ),
    ));

    final buttonPerson =
    Container(
      width: _width / 5,
      child:
        Container(
          height: 30.0,
          width: 30.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: Icon(
            Icons.person,
            color: Colors.blue,
            size: 20,
          ),
        ));



    final bottonBar =
    Container(
      margin: EdgeInsets.only(
        top: 5
      ),
      child:
      Row(
        children: <Widget>[
          buttonShare,
          buttonShopping,
          buttonAdd,
          buttonBox,
          buttonPerson
        ],
      ));


    final background = Container(
      height: (MediaQuery.of(context).size.height / 1.5),
      color: Colors.blue,
    );

    final columnProfile = Column(
      children: <Widget>[textProfileAndIcon, photoAndNameAndEmail, bottonBar],
    );

    final appBarResult = Stack(
      children: <Widget>[background, columnProfile],
    );

    return appBarResult;
  }
}
