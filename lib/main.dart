import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  AudioPlayer audioPlayer = AudioPlayer();

  void playNote(int note) {
    audioPlayer.play(AssetSource("audios/note$note.wav"));
  }

  Widget buildBottom({required Color colorBottom, required int note}) {
    return Expanded(
      child: Container(
        color: colorBottom,
        child: TextButton(
          onPressed: () {
            playNote(note);
          },
          child: Text(" "),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Xilofono"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          /*
          buildBottom(Colors.indigoAccent, 1),
          buildBottom(Colors.pinkAccent, 2),
          buildBottom(Colors.yellowAccent, 3),
          buildBottom(Colors.redAccent, 4),
          buildBottom(Colors.blueAccent, 5),
          buildBottom(Colors.purpleAccent, 6),
          buildBottom(Colors.orangeAccent, 7),
          */
          buildBottom(colorBottom: Colors.indigoAccent, note: 1),
          buildBottom(colorBottom: Colors.pinkAccent, note: 2),
          buildBottom(colorBottom: Colors.yellowAccent, note: 3),
          buildBottom(colorBottom: Colors.redAccent, note: 4),
          buildBottom(colorBottom: Colors.blueAccent, note: 5),
          buildBottom(colorBottom: Colors.purpleAccent, note: 6),
          buildBottom(colorBottom: Colors.orangeAccent, note: 7),
        ],
      ),
    );
  }
}
