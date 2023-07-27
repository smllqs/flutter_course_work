import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  Expanded xylophoneButton(String note, Color color) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(color),
        ),
        onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource(note));
        },
        child: const Text(''),
      ),
    );
  }

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
              xylophoneButton('note1.wav', Colors.red),
              xylophoneButton('note2.wav', Colors.orange),
              xylophoneButton('note3.wav', Colors.yellow),
              xylophoneButton('note4.wav', Colors.green),
              xylophoneButton('note5.wav', Colors.blue),
              xylophoneButton('note6.wav', Colors.indigo),
              xylophoneButton('note7.wav', Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
