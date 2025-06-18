import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

// => arrow syntax: we use when the func return a single line of code
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              notesButton(
                  soundNumber: 1, bgColor: Colors.red),
              notesButton(
                  soundNumber: 2, bgColor: Colors.orange),
              notesButton(
                  soundNumber: 3, bgColor: Colors.yellow),
              notesButton(
                  soundNumber: 4, bgColor: Colors.green),
              notesButton(
                  soundNumber: 5, bgColor: Colors.teal),
              notesButton(
                  soundNumber: 6, bgColor: Colors.blue),
              notesButton(
                  soundNumber: 7, bgColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }

  //MARK: - Functions
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$soundNumber.wav'),
    );
  }

  Expanded notesButton(
      {int soundNumber = 1, Color bgColor = Colors.white}) {
    return Expanded(
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: bgColor,
            minimumSize: Size(100, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero),
          ),
          onPressed: () {
            playSound(soundNumber);
          },
          child: Text("")),
    );
  }
}
