// import 'package:flutter/material.dart';
// import 'package:xml/xml.dart' as xml;
// import 'dart:convert';
//
// final String xmlString = '<string xmlns="http://tempuri.org/">[{"RowNo":1,"Id":175,"LisansNo":"ANT-D07001","Bayi_id":19,"Tank_Id":1,"Ad":"T01-MOTORİN / 1","PropTip":11,"YakitTurID":6,"OnlineTarih":"2023-02-21T15:26:40.36","Durum":1,"Adres":"1","KapasiteHacim":27300.0,"MevcutHacim":24412.05,"BoyCap":220.0,"Yatay":350.0,"Bombe":35.0,"Alt_Bosluk":-2.0,"Prob_Uzunluk":220.0,"SpeedWire":0.0,"Kalibrasyon":1,"Kalibrasyon_Yuzde":0.0,"HesapTip":2,"MerkezYakitId":0,"Tank_No":1,"OzelDurumId":0}]</string>';
// final document = xml.XmlDocument.parse(xmlString);
// final jsonStr = document.text;
// final jsonList = jsonDecode(jsonStr);
//
// int pri = jsonList[1]['id'];
//
// class xml_to_json extends StatefulWidget {
//
//
//
//
//   @override
//   State<xml_to_json> createState() => _xml_to_jsonState();
// }
//
// class _xml_to_jsonState extends State<xml_to_json> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body:Center(child: Text(pri.toString()),)
//       ),
//     );
//   }
// }
