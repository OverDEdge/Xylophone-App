import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

import './xylophone.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final _player = AudioCache();
  final List<Map<String, Object>> _audioFileNames = [
    {'filename': 'note1.wav', 'color': Colors.red},
    {'filename': 'note2.wav', 'color': Colors.orange},
    {'filename': 'note3.wav', 'color': Colors.yellow},
    {'filename': 'note4.wav', 'color': Colors.green},
    {'filename': 'note5.wav', 'color': Colors.teal},
    {'filename': 'note6.wav', 'color': Colors.blue},
    {'filename': 'note7.wav', 'color': Colors.purple},
  ];

  void _playSound(filename) {
    /*
    Method to play a sound based on a filename
    */
    _player.play(filename);
  }

  @override
  Widget build(BuildContext context) {
    _player.loadAll((_audioFileNames).map((setting) {
      return setting['filename']
          as String; // Need to typeset value to String since only defined as Object.
    }).toList()); // Pre-loading all sound files

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: XyloPhone(_playSound, _audioFileNames),
        ),
      ),
    );
  }
}
