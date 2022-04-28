import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Expanded buildKey({required int numberSound, required Color color}) =>
      Expanded(
        child: MaterialButton(
          onPressed: () {
            var player = AudioCache();
            player.play('note$numberSound.wav');
          },
          color: color,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(
                color: Colors.red,
                numberSound: 1,
              ),
              buildKey(
                color: Colors.orange,
                numberSound: 2,
              ),
              buildKey(
                color: Colors.yellow,
                numberSound: 3,
              ),
              buildKey(
                color: Colors.green,
                numberSound: 4,
              ),
              buildKey(
                color: Colors.teal,
                numberSound: 5,
              ),
              buildKey(
                color: Colors.blue,
                numberSound: 6,
              ),
              buildKey(
                color: Colors.purple,
                numberSound: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
