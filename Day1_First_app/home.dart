import 'package:flutter/material.dart';


myapp(){

var MyText= Text("Infinity", 
textDirection: TextDirection.ltr,
textAlign: TextAlign.center,);

// Icons --Non interactive
var MyExpandMoreIcon = Icon(Icons.expand_more, color: Colors.black);
var MyEmailIcon = Icon(Icons.email, color: Colors.black);


MyPressEmail(){   print("Somebody clicked the mail icon "); }

MyPressExpand(){  print("Expand more Clicked!!"); }

//Icon Buttons -- Interactive
var MyEmailbutton = IconButton(icon: MyEmailIcon, onPressed: MyPressEmail);
var MyExpandMorebutton = IconButton(icon: MyExpandMoreIcon, onPressed: MyPressExpand);


var url = 'https://raw.githubusercontent.com/Palakjain01/Flutter_images/master/44B30860-A09E-4427-8914-907E5340E438L0001.jpeg';

var MyImage = Image.network(
  url,
  height: double.infinity,
);

// AppBar --
var MyAppBar = AppBar(title: MyText, 
backgroundColor: Colors.amber, 
leading: MyExpandMorebutton,    // Made this clickable as well!
actions: <Widget>[MyEmailbutton,],

);

var MyHome = Scaffold(

  appBar: MyAppBar,
  body: MyImage,  
  backgroundColor: Colors.black,
  

);

var design= MaterialApp(
  home: MyHome,
  debugShowCheckedModeBanner: false,
  );
return design;

}