import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void play(int n){
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Widget buildKey(int n, Color color){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          play(n);
        },
        color: color,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(

          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

               buildKey(1, Colors.purple),
               buildKey(2, Colors.indigo),
               buildKey(3, Colors.blue),
               buildKey(4, Colors.green),
               buildKey(5, Colors.yellow),
               buildKey(6, Colors.orange),
               buildKey(7, Colors.red),


              ],
            ),
          )
        ), 
      ),
    );
  }
}

