// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// class ogrenciler extends StatefulWidget {
//   const ogrenciler({Key? key}) : super(key: key);
//
//   @override
//   State<ogrenciler> createState() => _ogrencilerState();
// }
//
// class _ogrencilerState extends State<ogrenciler> {
//
//   @override
//   void initState() {
//     super.initState();
//     _listele().then((response)
//     {
//       print(response.body);
//     }).catchError((error)
//     {
//       print(error);
//     });
//   }
//
//
//   bool _loading = true;
//   dynamic data = [];
//
//   Future<http.Response> _listele() async
//   {
//     return http.get(Uri.parse('https://yonetim.metaakdeniz.com/api/Student'));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _loading
//           ? Center(child: CircularProgressIndicator())
//           : ListView.builder(
//           itemCount: 5,
//           itemBuilder: (context,index)
//           {
//             return ListTile(
//               title: Text(
//                   "${data[index]["body"]}"
//               ),
//             );
//           }
//       ),
//     );
//   }
// }