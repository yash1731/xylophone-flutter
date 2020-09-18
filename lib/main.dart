import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buidKey({Text text, Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        textColor: Colors.white,
        child: text,
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  // ! first one

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Expanded(
              //     child: FlatButton(
              //   textColor: Colors.white,
              //   color: Colors.red,
              //   onPressed: () {
              //     playSound(1);
              //   },
              // ))

              buidKey(text: Text('RED'), color: Colors.red, soundNumber: 1),
              buidKey(text: Text('GREEN'), color: Colors.green, soundNumber: 2),
              buidKey(
                  text: Text('ORANGE'), color: Colors.orange, soundNumber: 3),
              buidKey(text: Text('BLUE'), color: Colors.blue, soundNumber: 4),
              buidKey(
                  text: Text('YELLOW'), color: Colors.yellow, soundNumber: 5),
              buidKey(text: Text('TEAL'), color: Colors.teal, soundNumber: 6),
              buidKey(
                  text: Text('PURPLE'), color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
