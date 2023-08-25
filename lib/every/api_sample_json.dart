// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// class data_yukle {
//   final int userId;
//   final int id;
//   final String title;
//   final String body;
//
//   data_yukle({
//     required this.userId,
//     required this.id,
//     required this.title,
//     required this.body,
//   });
//
//   factory data_yukle.fromJson(Map<String, dynamic> json) {
//     return data_yukle(
//       userId: json["userId"],
//       id: json["id"],
//       title: json["title"],
//       body: json["body"],
//     );
//   }
// }
//
// Future<List<data_yukle>> api_iste() async {
//   final response =
//   await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
//
//   if (response.statusCode == 200) {
//     final List<dynamic> jsonData = json.decode(response.body);
//     return jsonData.map((item) => data_yukle.fromJson(item)).toList();
//   } else {
//     throw Exception("Hata oluştu");
//   }
// }
//
// class api_sample_json extends StatefulWidget {
//   @override
//   _api_sample_jsonState createState() => _api_sample_jsonState();
// }
//
// class _api_sample_jsonState extends State<api_sample_json> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Api get metodları"),
//         ),
//         body: FutureBuilder<List<data_yukle>>(
//           future: api_iste(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return Center(
//                 child: CircularProgressIndicator(),
//               );
//             } else if (snapshot.hasData) {
//               return ListView.builder(
//                 itemCount: snapshot.data!.length,
//                 itemBuilder: (context, index) {
//                   final data = snapshot.data![index];
//                   return Container(
//                     padding: EdgeInsets.all(16.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("userId: ${data.userId}"),
//                         Text("id: ${data.id}"),
//                         Text("title: ${data.title}"),
//                         Text("body: ${data.body}"),
//                       ],
//                     ),
//                   );
//                 },
//               );
//             } else if (snapshot.hasError) {
//               return Center(child: Text("${snapshot.error}"));
//             } else {
//               return Center(
//                 child: Text("Veri yok"),
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
