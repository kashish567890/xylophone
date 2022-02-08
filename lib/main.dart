import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  Expanded buildKey({int notenum = 0 , Color color}){
    return Expanded(
                child: TextButton(
                  onPressed: () {
                    player.play('note$notenum.wav');
                  },
                  style: TextButton.styleFrom(backgroundColor: color),
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
            
            crossAxisAlignment: CrossAxisAlignment.stretch,
            
            
            children: [
              
              buildKey(notenum: 1, color: Colors.red),
              buildKey(notenum: 2, color: Colors.orange),
              buildKey(notenum: 3, color: Colors.yellow),
              buildKey(notenum: 4, color: Colors.green),
              buildKey(notenum: 5, color: Colors.teal),
              buildKey(notenum: 6, color: Colors.blue),
              buildKey(notenum: 7, color: Colors.indigo),


            ],
          ),
        ),
      ),
    );
  }
}
