import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  Future<void> _playNote(int num) async {
    try {
      final player = AudioPlayer();
      await player.play(AssetSource('note$num.wav'));
    } catch (e) {
      print('Error: $e');
    }
  }

  Widget _buildkey(
      {required Color color, required int noteNum, String? buttonText}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            _playNote(noteNum);
          },
          child: Text(buttonText!),
        ),
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
              _buildkey(color: Colors.red, noteNum: 1, buttonText: ''),
              _buildkey(color: Colors.orange, noteNum: 2, buttonText: ''),
              _buildkey(color: Colors.yellow, noteNum: 3, buttonText: ''),
              _buildkey(color: Colors.green, noteNum: 4, buttonText: ''),
              _buildkey(color: Colors.teal, noteNum: 5, buttonText: ''),
              _buildkey(color: Colors.blue, noteNum: 6, buttonText: ''),
              _buildkey(color: Colors.purple, noteNum: 7, buttonText: ''),
              _buildkey(color: Colors.red, noteNum: 8, buttonText: ''),
            ],
          ),
        ),
      ),
    );
  }
}
