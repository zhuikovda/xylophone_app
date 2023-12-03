import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  Future<void> _playNote() async {
    try {
      final player = AudioPlayer();
      await player.play(AssetSource('note1.wav'));
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    _playNote();
                  },
                  child: const Text('Press me'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
