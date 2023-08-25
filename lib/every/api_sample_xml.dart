// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:xml/xml.dart' as xml;
//
// class veri {
//   final String page;
//
//   veri({required this.page});
// }
//
// Future<List<veri>> fetchData() async {
//   var response = await http.get(Uri.parse('http://94.102.69.93:8090/wservis/mobilestation.asmx/TankSonDurum?userName=Entegre&Password=123654&tankno=1&bayiId=19'));
//   if (response.statusCode == 200) {
//     var xmlString = response.body;
//     var document = xml.XmlDocument.parse(xmlString);
//     var Liste = document.findAllElements('Travelerinformation');
//     List<veri> data = [];
//     for (var veri_ in Liste) {
//       var page = veri_.findElements('id').first.text;
//       data.add(veri(page: page));
//     }
//     return data;
//   } else {
//     throw Exception('XML verileri alınamadı: ${response.statusCode}');
//   }
// }
//
// class ApiXml extends StatefulWidget {
//   const ApiXml({Key? key}) : super(key: key);
//
//   @override
//   State<ApiXml> createState() => _ApiXmlState();
// }
//
// class _ApiXmlState extends State<ApiXml> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Api XML get metodları"),
//         ),
//         body: FutureBuilder<List<veri>>(
//           future: fetchData(),
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
//                         Text("Veri: ${data.page}"),
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
