import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XyloScreen extends StatelessWidget {
  XyloScreen({Key key});

  void playSound(int index) {
    final player = AudioCache();

    player.play('assets_note$index.wav');
  }

  Expanded buildNoteContainers(Color color, int index) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(index);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(' Flutter Xylophony '),
      ),
      body: Column(
        children: [
          buildNoteContainers(Colors.red, 1),
          buildNoteContainers(Colors.orange, 2),
          buildNoteContainers(Colors.yellow, 3),
          buildNoteContainers(Colors.green, 4),
          buildNoteContainers(Color(0xFF209688), 5),
          buildNoteContainers(Color(0xFF2996F4), 6),
          buildNoteContainers(Colors.purple, 7),
        ],
      ),
    );
  }
}
