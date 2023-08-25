// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:xml/xml.dart' as xml;
// import 'dart:convert';
//
// import 'package:dio/dio.dart';
//
//
//
//
// final dio = Dio();
//
// final baseUrl = "http://94.102.69.93:8090/wservis/mobilestation.asmx/";
//
// // String? kullaniciAdi = "Entegre";
// // String? sifre = "123654";
//
//
// class process
// {
//   process(this.url, [this.sorgu_parametresi, this.veri]);
//
//   final String url;
//   final Map<String, dynamic>? sorgu_parametresi;
//
//   final Map<String, dynamic>? veri;
//
//   Future getData() async {
//     try {
//       final response = sorgu_parametresi != null
//           ? await dio.get(baseUrl + url, queryParameters: sorgu_parametresi)
//           : await dio.get(baseUrl + url);
//       if (response.statusCode == 200) {
//         print(response.statusCode);
//         return response.data;
//       } else {
//         print(response.statusCode);
//         throw Exception("Veriler yüklenemedi");
//       }
//     } catch (error) {
//       print(error);
//       throw Exception("Verilere ulaşılamadı");
//     }
//   }
//
//   Future postData(veri) async {
//     try {
//       final response = await dio.post(
//         baseUrl + url,
//         data: veri,
//       );
//       print(response.statusCode);
//       if (response.statusCode == 200) {
//         print(response.statusCode);
//         return response.data;
//       } else {
//         print(response.statusCode);
//         throw Exception("Veriler yüklenemedi");
//       }
//     } catch (error) {
//       print(error);
//       throw Exception("Verilere ulaşılamadı");
//     }
//   }
// }
//
// class pumps extends StatefulWidget {
//   const pumps({Key? key}) : super(key: key);
//
//   @override
//   State<pumps> createState() => _pumpsState();
// }
//
// class _pumpsState extends State<pumps> {
//
//   @override
//   void initState() {
//     super.initState();
//     getPumpsData();
//   }
//
//   //Backend kısmı burada başlıyor
//
//   dynamic _data;
//   bool _isLoading = true;
//
//   Future getPumpsData() async {
//     final redUsername = "Entegre";
//     final redPassword = "123654";
//     //final bayiId = await storage.read(key: 'bayiId');
//
//     process adress = process(
//       'PompaSonDurum',
//       {
//         'username': redUsername,
//         'password': redPassword,
//         'bayiId': 37,
//         'pompano': 0,
//       },
//     );
//     var response = await adress.getData();
//
//     //donüştürme işlemi
//     final document = xml.XmlDocument.parse(response);
//     final jsonStr = document.text;
//     final jsonList = jsonDecode(jsonStr);
//     //dönüştürme işlemi
//
//
//     if (jsonList != null) {
//       for (var j = 0; j < jsonList.length; j++) {
//         process adress2 = process(
//           'Yakit',
//           {
//             'userName': redUsername,
//             'password': redPassword,
//             'yakitId': 0,
//           },
//         );
//         var response2 = await adress2.getData();
//
//         //donüştürme işlemi
//         final document2 = xml.XmlDocument.parse(response2);
//         final jsonStr2 = document2.text;
//         final jsonList2 = jsonDecode(jsonStr2);
//         //dönüştürme işlemi
//
//
//         //var yakitResult = convert().converter(response);
//
//
//
//         // Tarihe göre sıralama
//         jsonList.sort((a, b) =>
//             DateTime.parse(b['Tarih']).compareTo(DateTime.parse(a['Tarih'])));
//         if (jsonList2 != null) {
//           for (var i = 0; i < jsonList2.length; i++) {
//             if (jsonList[j]['YakitTurID'] == jsonList2[i]['id']) {
//               jsonList[j]['YakitTurID'] = jsonList2[i]['Ad'];
//             }
//           }
//         }
//       }
//       setState(() {
//         _data = jsonList;
//         _isLoading = false;
//       });
//     }
//   }
//
// //Back end kısmı burada bitiyor
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//           body: _isLoading
//               ? Center(
//             child: CircularProgressIndicator(
//               color: Colors.deepOrange,
//             ),
//           )
//               : ListView.builder(
//             itemCount: _data?.length ?? 0,
//             itemBuilder: (context, element) {
//               return Padding(
//                 padding: const EdgeInsets.fromLTRB(10,20,10,0),
//                 child: ListTile(
//                   title: Container(
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomRight,
//                         colors: const [
//                           Color(0xFFF15523),
//                           Color(0xff333645),
//                         ],
//                       ),
//                       borderRadius: BorderRadius.circular(25),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(25),
//                       child: Column(
//                             crossAxisAlignment:
//                             CrossAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding:
//                                 const EdgeInsets.only(bottom: 20),
//                                 child: Text(
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold),
//                                     "${_data[element]['PompaNo'] ?? ''}. Pompa"),
//                               ),
//                               Text(
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                   ),
//                                   "Yakıt: ${_data[element]['YakitTurID'] ?? '-'}"),
//                               Text(
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                   ),
//                                   "Plaka: ${_data[element]['Plaka'] ?? '-'}"),
//                               Text(
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                   ),
//                                   "Miktar: ${_data[element]['Litre'] ?? 0.0}"),
//                               Text(
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                   ),
//                                   "B.Fiyatı: ${_data[element]['BirimFiyat'] ?? 0.0}"),
//                               Text(
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                   ),
//                                   "Tutar: ${_data[element]['Tutar'] ?? 0.0}"),
//                               Text(
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                   ),
//                                   "Cari Unvan: ${_data[element]['CariUnvan'] ?? ''}"),
//                               Padding(
//                                 padding: const EdgeInsets.only(top: 20),
//                                 child: Row(
//                                   mainAxisAlignment:
//                                   MainAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 18,
//                                             fontWeight:
//                                             FontWeight.bold),
//                                         "${_data[element]['PerUnvan'] ?? ''}"),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                     ),
//                   ),
//                 ),
//               );
//             },
//           )
//     );
//   }
// }
