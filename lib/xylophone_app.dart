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

  Widget _buildkey(Color color, int noteNum, String buttonText) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            _playNote(noteNum);
          },
          child: Text(buttonText),
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
              _buildkey(Colors.red, 1, ''),
              _buildkey(Colors.orange, 2, ''),
              _buildkey(Colors.yellow, 3, ''),
              _buildkey(Colors.green, 4, ''),
              _buildkey(Colors.teal, 5, ''),
              _buildkey(Colors.blue, 6, ''),
              _buildkey(Colors.purple, 7, ''),
              _buildkey(Colors.pink, 8, ''),
            ],
          ),
        ),
      ),
    );
  }
}
