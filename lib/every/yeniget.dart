// import 'package:flutter/material.dart';
// import 'package:tester/Network3.dart';
//
// class yeniget extends StatefulWidget {
//   const yeniget({Key? key}) : super(key: key);
//
//   @override
//   State<yeniget> createState() => _yenigetState();
// }
//
// class _yenigetState extends State<yeniget> {
//   @override
//   void initState() {
//     super.initState();
//
//     //_get();
//   }
//
//   String resim = "";
//
//   Future _get() async
//   {
//     var get_data = await network("http://localhost:8080/images/show/6").get_data();
//     print(get_data);
//     setState(()
//     {
//       resim = (get_data);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Image.network("http://localhost:8080/images/show/6"),
//       ),
//     );
//   }
// }