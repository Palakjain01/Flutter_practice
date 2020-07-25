import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

import 'package:fluttertoast/fluttertoast.dart'; 

MyApp()
{
  MyPress(){
    print("Email Icon Clicked");

    Fluttertoast.showToast(
        msg: "Landing to Email",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 10,
        backgroundColor: Colors.black,
       // textColor: Colors.white,
        fontSize: 20.0
    );


  }

  FlutterStatusbarcolor.setStatusBarColor(Colors.orange);

return MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text("Infinity"),

      actions: <Widget>[
        IconButton(icon: Icon(Icons.email), onPressed: MyPress),
      ],
    ),
  ),
);


}