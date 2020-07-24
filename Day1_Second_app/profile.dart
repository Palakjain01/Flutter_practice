

import 'package:flutter/material.dart';

myprofile()
{
var MyBody= Container(

  width: 300,
  height: 435,
  //color: Colors.red, since Color and Decoration both cannot work together!
  alignment: Alignment.bottomCenter,
  decoration: BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.circular(15),
    border: Border.all(
        width: 8,
        color: Colors.black,
    )
  ),
  child: Column(
    children: <Widget>[
      Image.network("https://raw.githubusercontent.com/Palakjain01/Flutter_images/master/44B30860-A09E-4427-8914-907E5340E438L0001.jpeg"),

      Text("Palak Jain",
        style: TextStyle(
        color: Colors.amber,
        fontWeight: FontWeight.bold,
        fontSize: 15,)),

      Text("7424884988",
        style: TextStyle(
        color: Colors.amber,
        fontWeight: FontWeight.bold,
        fontSize: 15,)),
    ]
  ),
  
  /* Text("Palak Jain", 
  style: TextStyle(
    color: Colors.black,
    //shadows: blurRadius,
    fontWeight: FontWeight.bold,
    fontSize: 24,
  ),)*/
  );

var MyHome= Scaffold(
  appBar: AppBar(
    title: Text("MyBundleOfHappiness"),
    backgroundColor: Colors.amber,
  ),
  body: Center(child: MyBody),
);

return MaterialApp(home: MyHome,
debugShowCheckedModeBanner: false,);


}


