

import 'package:flutter/material.dart';

myapp()
{
var MyBody= Container(

  width: 300,
  height: 300,
  //color: Colors.red, since Color and Decoration both cannot work together!
  alignment: Alignment.bottomCenter,
  decoration: BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.circular(15),
    image: DecorationImage(
        fit: BoxFit.contain,
        image: NetworkImage("https://raw.githubusercontent.com/Palakjain01/Flutter_images/master/44B30860-A09E-4427-8914-907E5340E438L0001.jpeg"),),
    border: Border.all(
        width: 8,
        color: Colors.black,
    )
  ),
  child: Text("Palak Jain", 
  style: TextStyle(
    color: Colors.black,
    //shadows: blurRadius,
    fontWeight: FontWeight.bold,
    fontSize: 24,
  ),

  
));


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


