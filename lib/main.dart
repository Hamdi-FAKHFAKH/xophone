import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XophoneApp());

class XophoneApp extends StatelessWidget {
  final AudioCache a = AudioCache();
  sound(MaterialColor c, int n) {
    return Expanded(
      child: TextButton(
        style:
            ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(c)),
        child: Container(
          color: Colors.transparent,
        ),
        onPressed: () {
          a.load('note$n.wav');
          a.play('note$n.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              sound(Colors.red, 1),
              sound(Colors.yellow, 2),
              sound(Colors.green, 3),
              sound(Colors.teal, 4),
              sound(Colors.blue, 5),
              sound(Colors.purple, 6),
              sound(Colors.orange, 7)
            ],
          ),
        ),
      ),
    );
  }
}
