// import 'package:flutter/material.dart';
// // import 'package:html/parser.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// class vikipedihttp extends StatefulWidget {
//   const vikipedihttp({Key? key}) : super(key: key);
//
//   @override
//   State<vikipedihttp> createState() => _vikipedihttpState();
// }
//
// class _vikipedihttpState extends State<vikipedihttp> {
//
//   Future fetchWikipediaData(String searchTerm) async {
//     final response = await http.get(Uri.parse('https://tr.wikipedia.org/w/api.php?action=query&prop=extracts&format=json&titles=$searchTerm&redirects=1&utf8=1&exsentences=10&exintro=1'));
//
//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       return data;
//     } else {
//       throw Exception('Failed to load data from Wikipedia');
//     }
//   }
//
//   dynamic sonuc;
//   Future cek () async
//   {
//    sonuc = await fetchWikipediaData("Ahmet Haşim");
//    setState(() {
//      sonuc;
//    });
//    print(sonuc["query"]["pages"].values.first["title"]);
//    var sonuc2 = sonuc["query"]["pages"].values.first["extract"];
//    print(sonuc);
//    print(sonuc2);
//    // final document = html.parse(sonuc);
//    // final String text = parse(document.body!.text).documentElement!.text;
//    // print(text.toString());
//   }
//
// @override
//   void initState() {
//     super.initState();
//     cek();
//   }
//
//   @override
//   Widget build(BuildContext context) {;
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: 1,
//           itemBuilder: (context,index)
//       {
//         return ListTile(
//           title: Text(""),
//         );
//       }),
//     );
//   }
// }
