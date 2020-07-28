import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

myapp1() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.amber);

  myprint() {
    print("Palak Jain");
  }

  myt_call() {
    Fluttertoast.showToast(
        msg: "You'll be soon connected to Palak!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  myt_profile() {
    Fluttertoast.showToast(
        msg: "Change Profile!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  var mybody = Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    color: Colors.amber.shade400,
    margin: EdgeInsets.all(30),

    /*child: Container(

        // I didn't get How THE PARENT CONATINER'S SIZE DEPENDS ON THE SIZE OF CHILD CONTAINE

      width: 500,
      height: 100,
      color: Colors.blue,
      child: Text("Hello"),
    ),
  */
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(50),
          //padding: EdgeInsets.only (left: 50),
          width: 300,
          height: 150,
          //color: Colors.black,

          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Palak Jain",
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //Padding: EdgeInsets.all(20),
                  Icon(
                    Icons.email,
                    color: Colors.amber,
                  ),
                  Text(
                    " itspalak19@gmail.com",
                    style: TextStyle(
                      color: Colors.amber,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        GestureDetector(
          onDoubleTap: myprint,
          child: Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            // margin:EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white,
              image: const DecorationImage(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/Palakjain01/Flutter_images/master/44B30860-A09E-4427-8914-907E5340E438L0001.jpeg'),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                width: 3,
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(70),
            ),
            //child: Text("Second "),
          ),
        ),
      ],
    ),
  );

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Infinity",
          style: TextStyle(
            color: Colors.amber,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.add_call,
                color: Colors.amber,
              ),
              onPressed: myt_call),
          IconButton(
              icon: Icon(Icons.account_circle, color: Colors.amber),
              onPressed: myt_profile),
        ],
      ),
      body: mybody,
    ),
  );
}
