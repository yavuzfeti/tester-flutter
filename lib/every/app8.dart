// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:dio/dio.dart';
//
//
// class app8 extends StatefulWidget {
//   const app8({Key? key}) : super(key: key);
//
//   @override
//   State<app8> createState() => _app8State();
// }
//
// final dio = Dio();
//
// final baseUrl = "http://94.102.69.93:8090/wservis/mobilestation.asmx/";
//
// String? kullaniciAdi = "Entegre";
// String? sifre = "123654";
//
// class donusturme {
//   donusturme([this.data]);
//
//   dynamic data;
//
//   dynamic donustur(response) {
//     RegExp donusturucu = RegExp(r'(\[{.*}\])');
//     String str = response.toString();
//     RegExpMatch? match = donusturucu.firstMatch(str);
//     String? sonuc = match?.group(0);
//     if (sonuc != null) {
//       return jsonDecode(sonuc) as List;
//     } else {
//       return null;
//     }
//   }
// }
//
// class get_ve_post {
//   get_ve_post(this.url, [this.sorgu_parametresi, this.veri]);
//
//   final String url;
//   final Map<String, dynamic>? sorgu_parametresi;
//
//   final Map<String, dynamic>? veri;
//
// //http://213.194.86.91:88/wservis/mobilestation.asmx
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
// class _app8State extends State<app8> {
//   TextEditingController bir = TextEditingController();
//   TextEditingController iki = TextEditingController();
//
//
// //login future 'u
//   Future<dynamic> giris_veri_gonder(String? username, String? password) async {
//     setState(() {
//       // isLoading = true;
//     });
//     get_ve_post alici = get_ve_post('SLogin', {
//       'username': kullaniciAdi,
//       'password': sifre,
//     });
//     var response = await alici.getData();
//     String str = response.toString();
//     RegExp donusturucu2 = RegExp(r'(?<=>)(.*)(?=<)');
//     RegExpMatch? match = donusturucu2.firstMatch(str);
//     String? expressionString = match?.group(0);
//     if (expressionString?.substring(0, 2) == 'OK') {
//       // await secureStorage.write(key: 'username', value: kullaniciAdi);
//       // await secureStorage.write(key: 'password', value: sifre);
//       var tekRAKAM = expressionString?.contains('||') ?? false;
//       var bayiId = tekRAKAM
//           ? expressionString?.substring((expressionString.length))
//           : expressionString?.substring(
//           (expressionString.length) - 1, (expressionString.length));
//       if (bayiId == '0' || bayiId == 0) {
//         // await secureStorage.write(key: 'bayiId', value: '19');
//       } else {
//         // await secureStorage.write(key: 'bayiId', value: bayiId);
//         get_ve_post bayiListe = get_ve_post('BayiListesi', {
//           'username': kullaniciAdi,
//           'password': sifre,
//           'unvan': ' ',
//         });
//         var response = await bayiListe.getData();
//         var bayiListeResult = donusturme().donustur(response);
//         if (bayiListeResult != null) {
//           for (var i = 0; i < bayiListeResult.length; i++) {
//             if (bayiListeResult[i]['Id'] == bayiId) {
//               // await secureStorage.write(
//               //     key: 'lisansNo', value: bayiListeResult[i]['Lisansno'] ?? 'bilinmiyor');
//               // await secureStorage.write(
//               //     key: 'unvan', value: bayiListeResult[i]['Unvan'] ?? 'bilinmiyor');
//               // await secureStorage.write(
//               //     key: 'sehir', value: bayiListeResult[i]['Sehir'] ?? 'bilinmiyor');
//               // await secureStorage.write(
//               //     key: 'online', value: bayiListeResult[i]['Online'] ?? 'bilinmiyor');
//             }
//           }
//           return true;
//         } else {
//           return false;
//         }
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//             child: Column(
//               children: [
//                 TextFormField(
//                   controller: bir,
//                 ),
//                 TextFormField(
//                   controller: iki,
//                 ),
//                 ElevatedButton(
//                     onPressed: () async {
//                       await giris_veri_gonder(kullaniciAdi, sifre);
//                     },
//                     child: Text("Gönder"))
//               ],
//             )),
//       ),
//     );
//   }
// }
