// import 'dart:convert';
// import 'package:xml/xml.dart' as xml;
// import 'package:flutter/material.dart';
// import 'Network3.dart';
//
// class vikipedi extends StatefulWidget {
//   const vikipedi({Key? key}) : super(key: key);
//
//   @override
//   State<vikipedi> createState() => _vikipediState();
// }
//
// class _vikipediState extends State<vikipedi> {
//
//   @override
//   void initState()
//   {
//     super.initState();
//     al();
//   }
//
//   bool loading = true;
//   dynamic data = "";
//   var extract = "";
//
//   Future al() async
//   {
//     setState(()
//     {
//       loading = true;
//     });
//
//     try
//     {
//       network adres = network("https://tr.wikipedia.org/wiki/Ahmet_Ha%C5%9Fim");
//
//       var get_data = await adres.get_data();
//
//       if (get_data != null)
//       {
//         var jsonResponse = json.decode(xml.XmlDocument.parse(get_data.body).toString());
//         var pageId = jsonResponse['query']['pages'].keys.first.toString();
//         extract = jsonResponse['query']['pages'][pageId]['extract'].toString();
//         print("EXTRACT: ${extract.toString()}");
//         data = await get_data;
//         print(data);
//       }
//       setState(()
//       {
//         extract;
//         data;
//         loading = false;
//       });
//     }
//     catch (e)
//     {
//       setState(()
//       {
//         loading = false;
//       });
//       print("HATA OLUŞTU $e");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Vikipedi Örneği'),
//       ),
//       body: Center(
//         child: loading ? const CircularProgressIndicator() : Text(extract.toString()),
//       ),
//     );
//   }
// }
