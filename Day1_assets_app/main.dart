/* Add the audio player dependency in pubspec.yaml file
Create a folder for image and audio(assets) and put your files into these folders
for local assets
*/

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Infinty"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(50),
                width: 350,
                height: 350,
                child: Card(
                  child: Image.asset('images/dreams.jpg'),
                  elevation: 20,
                  color: Colors.red,
                ),
              ),
              Container(
                width: 100,
                height: 50,
                child: RaisedButton(
                  onPressed: () {
                    print("Hi");
                    var sound = AudioCache();
                    sound.play('Ilahi.mp3');
                  },
                  child: Card(
                    child: Text("button!"),
                    elevation: 20,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
