// import 'dart:convert';
// import 'package:tester/xml_to_json.dart';
// import 'package:xml/xml.dart' as xml;
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
//
//
//
//
//
// class ApiXml_2 extends StatefulWidget {
//
//   @override
//   State<ApiXml_2> createState() => _ApiXml_2State();
// }
//
// class _ApiXml_2State extends State<ApiXml_2> {
//
//
//
//   Future<String> fetchData() async {
//     var response = await http.get(Uri.parse('http://94.102.69.93:8090/wservis/mobilestation.asmx/TankSonDurum?userName=Entegre&Password=123654&tankno=1&bayiId=19'));
//     if (response.statusCode == 200) {
//       var xmlveri = response.body.toString();
//       final document = xml.XmlDocument.parse(xmlveri);
//       final jsonStr = document.text;
//       final jsonList = jsonDecode(jsonStr);
//       int id = jsonList[1]['id'];
//       return id.toString();
//     }
//     else {
//       throw Exception('XML verileri alınamadı: ${response.statusCode}');
//     }
//   }
//
//
// @override
//   void initState() {
//     fetchData();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Api XML to Json"),
//         ),
//         body: Center(
//           child: Text(id.toString()),
//         )
//       ),
//     );
//   }
// }
