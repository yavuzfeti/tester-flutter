// import 'package:flutter/material.dart';
//
// class alert_set extends StatefulWidget {
//   const alert_set({Key? key}) : super(key: key);
//
//   @override
//   State<alert_set> createState() => _alert_setState();
// }
//
// class _alert_setState extends State<alert_set> {
//
//   bool _durum_put = false;
//   bool _durum = false;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Text("Durum Put: $_durum_put"),
//             Text("Durum: $_durum"),
//             ElevatedButton(
//               onPressed: ()
//               {
//                 showDialog(
//                   context: context,
//                   builder: (context) {
//                     return StatefulBuilder(
//                     builder: (context, setState) {
//                     return AlertDialog(
//                       title: Text(
//                         "Alert Set",
//                         textAlign: TextAlign.center,
//                       ),
//                       content: Container(
//                         width: 450,
//                         height: 200,
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [
//                             Container(
//                               decoration: BoxDecoration(
//                                   border: Border.all(
//                                       color: Colors.deepPurple, width: 2),
//                                   borderRadius: BorderRadius.circular(5)),
//                               padding: EdgeInsets.fromLTRB(5,0,5,0),
//                               child: DropdownButton(
//                                 underline: Container(),
//                                 items: [
//                                   DropdownMenuItem(
//                                     child: Text("Aktif"),
//                                     value: true,
//                                   ),
//                                   DropdownMenuItem(
//                                     child: Text("Pasif"),
//                                     value: false,
//                                   ),
//                                 ],
//                                 value: _durum_put,
//                                 onChanged: (value) {
//                                   setState(() {
//                                     _durum_put = value as bool;
//                                   });
//                                 },
//                               ),
//                             ),
//                             Container(
//                                 decoration: BoxDecoration(
//                                     border: Border.all(
//                                         color: Colors.deepPurple, width: 2),
//                                     borderRadius: BorderRadius.circular(5)),
//                                 padding: EdgeInsets.all(5),
//                                 width: 200,
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Radio(
//                                       value: true,
//                                       groupValue: _durum,
//                                       onChanged: (value) {
//                                         setState(() {
//                                           _durum = value as bool;
//                                         });
//                                       },
//                                     ),
//                                     Text("Aktif"),
//                                     Radio(
//                                       value: false,
//                                       groupValue: _durum,
//                                       onChanged: (value) {
//                                         setState(() {
//                                           _durum = value as bool;
//                                         });
//                                       },
//                                     ),
//                                     Text("Pasif"),
//                                   ],
//                                 )
//                             ),
//                           ],
//                         ),
//                       ),
//                       actions: [
//                         ElevatedButton(
//                           onPressed: () => Navigator.of(context).pop(),
//                           child: Text('Kaydet'),
//                         ),
//                       ],
//                     );
//                     },
//                     );
//                   },
//                 );
//               },
//               child: Text("Alert Set"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
