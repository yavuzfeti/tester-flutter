// import 'package:assets_audio_player/assets_audio_player.dart';
// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
//
// class audio extends StatefulWidget {
//   const audio({Key? key}) : super(key: key);
//
//   @override
//   State<audio> createState() => _audioState();
// }
//
// class _audioState extends State<audio> {
//   //late AudioPlayer player;
//   final AssetsAudioPlayer _oynatici = AssetsAudioPlayer();
//
//   @override
//   void initState() {
//     super.initState();
//     //player = AudioPlayer()..setSourceAsset("lib/Assets/sesler/1.mp3");
//   }
//
//   void _oynat() async
//   {
//     await _oynatici.open(Audio("lib/Assets/sesler/1.mp3"),);
//     _oynatici.play();
//   }
//
//   @override
//   void dispose() {
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Audio Player"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: _oynat,
//                 child: Text("Oynat"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
