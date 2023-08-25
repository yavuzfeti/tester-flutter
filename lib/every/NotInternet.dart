// import 'package:flutter/material.dart';
//
// class not_internet extends StatefulWidget {
//   const not_internet({Key? key}) : super(key: key);
//
//   @override
//   State<not_internet> createState() => _not_internetState();
// }
//
// class _not_internetState extends State<not_internet> {
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: Column(
//         children: [
//           Icon(
//             Icons.wifi_off,
//             size: 50,
//             color: Colors.white,
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Text(
//               textAlign: TextAlign.center,
//               style: TextStyle(color: Colors.white),
//               "Lütfen internet bağlantınızı kontrol edin.")
//         ],
//       ),
//       actions: [
//         Center(
//           child: ElevatedButton(
//               style: ButtonStyle(
//                   backgroundColor: MaterialStatePropertyAll(Colors.deepOrange)),
//               onPressed: () {},
//               child: Text("İnternet ayarlarını aç")),
//         )
//       ],
//       backgroundColor: Colors.orangeAccent,
//       elevation: 0,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(25),
//       ),
//     );
//   }
// }
