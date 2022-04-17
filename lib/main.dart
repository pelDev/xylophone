import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const Xylophone());

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playSound(int sound) {
    final player = AudioCache(prefix: 'assets/');
    player.play('note$sound.wav');
  }

  Widget buildKey(int soundNote, Color color) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(0),
        ),
        onPressed: () => playSound(soundNote),
        child: Container(
          color: color,
          width: double.infinity,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              buildKey(1, Colors.red),
              buildKey(2, Colors.amber),
              buildKey(3, Colors.blue),
              buildKey(4, Colors.yellow),
              buildKey(5, Colors.orange),
              buildKey(6, Colors.purple),
              buildKey(7, Colors.pink),
            ],
          ),
        ),
      ),
    );
  }
}
