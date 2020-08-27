import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main (){
  runApp(xylophone()
  );
}
 
class xylophone extends StatelessWidget {
  void produceSound (int play){
    final player = AudioCache();
    player.play('note$play.wav');
  }
  Expanded buildKey ({Color colors, int play})
  {
    return Expanded(
      child: FlatButton
        ( color:color,
        onPressed:(){
        produceSound(play);
      },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
       child:Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children:[
          buildKey(color:Colors.red, play: 1 ),
          buildKey(),
          buildKey(),
          buildKey(),
          buildKey(),
          buildKey(),
         ]
         ),
        ),
      ),
    );
  }
}
