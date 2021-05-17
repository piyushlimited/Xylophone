import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(child: MyApp(),
      ),
    ),
  ),
  );
}

class MyApp extends StatelessWidget {

  void playSong(int songNumber){
    final audio = AudioCache();
    audio.play('note$songNumber.wav');
  }

  Expanded colbuild(int songNumber,Color color){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: (){
       playSong(songNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget> [
        colbuild(1,Colors.red),
        colbuild(2,Colors.blueGrey),
        colbuild(3,Colors.green),
        colbuild(4,Colors.white),
        colbuild(5,Colors.black),
        colbuild(6,Colors.teal),
        colbuild(7,Colors.pink)

      ],
    );
  }
}


