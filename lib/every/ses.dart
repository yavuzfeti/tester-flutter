// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
//
// class ses extends StatefulWidget {
//   const ses({Key? key}) : super(key: key);
//
//   @override
//   State<ses> createState() => _sesState();
// }
//
// //AudioPlayer player = AudioPlayer();
//
// class _sesState extends State<ses>
// {
//   Future<void> oynat() async
//   {
//     final player = AudioPlayer();
//     await player.play(AssetSource('../lib/Assets/sesler/3.mp3'));
//
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("SES"),
//       ),
//       backgroundColor: Colors.deepPurple,
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             ElevatedButton(
//               child: const Text("Oynat"),
//               onPressed: () {
//                 oynat();
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
