// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:intl/intl.dart';
// import 'package:tester/process.dart';
// import 'package:xml/xml.dart' as xml;
// import 'dart:convert';
//
// class stocks extends StatefulWidget {
//   @override
//   State<stocks> createState() => _stocksState();
// }
//
// DateTime gun_1_d = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day - 1);
// DateTime gun_2_d = DateTime.now().add(Duration(days: 1));
//
// String buton_1 = DateFormat('yyyy/MM/dd').format(gun_1_d);
// String buton_2 = DateFormat('yyyy/MM/dd').format(gun_2_d);
//
// String gun_1 = DateFormat('yyyy/MM/dd').format(gun_1_d);
// String gun_2 = DateFormat('yyyy/MM/dd').format(gun_2_d);
//
// class _stocksState extends State<stocks> {
//
//   @override
//   void initState() {
//     super.initState();
//     getStocksData();
//   }
//
//   //Backend
//
//   bool is_loading = true;
//   dynamic _data;
//
//   bool filtre = false;
//
//   Future<void>getStocksData()async
//   {
//     gun_1 = DateFormat('yyyy/MM/dd').format(gun_1_d);
//     gun_2 = DateFormat('yyyy/MM/dd').format(gun_2_d);
//
//     String kullanici_adi = "Entegre";
//     String sifre = "123654";
//     String bayi_id = "19";
//
//     process adress = process('TankDeviasyon', {
//       'userName': kullanici_adi,
//       'password': sifre,
//       'bayiId': bayi_id,
//       'YakitTurId': 0,
//       'BasTarih': gun_1,
//       'BitTarih': gun_2,
//     });
//
//     var response = await adress.getData();
//
//     //donüştürme işlemi
//     final stocksResult = jsonDecode(xml.XmlDocument.parse(response).text);
//
//     if(stocksResult != null)
//     {
//       _data = stocksResult;
//     }
//     setState(() {
//       is_loading = false;
//     });
//   }
//
//
//
//
//   //ilk datepicker
//   Future<void> _selectStartDate(BuildContext context) async {
//     final DateTime? secilen_ilk = await showDatePicker(
//         context: context,
//         initialDate: DateTime.now(),
//         firstDate: DateTime(2000, 8),
//         lastDate: DateTime.now());
//     if (secilen_ilk != null) {
//       setState(() {
//         gun_1_d = secilen_ilk;
//         gun_1 = DateFormat('yyyy/MM/dd').format(gun_1_d);
//         buton_1 = gun_1;
//       });
//     }
//   }
//
//   //son datepicker
//   Future<void> _selectEndDate(BuildContext context) async {
//     final DateTime? secilen_iki = await showDatePicker(
//         context: context,
//         initialDate: DateTime.now(),
//         firstDate: DateTime(2000, 8),
//         lastDate: DateTime.now());
//     if (secilen_iki != null) {
//       setState(() {
//         gun_2_d = secilen_iki;
//         gun_2 = DateFormat('yyyy/MM/dd').format(gun_2_d);
//         buton_2 = gun_2;
//       });
//     }
//   }
//
//   //yenileme fonksiyonu yükleniyor true ise fonksiyon çalışmaz
//   Future<void> _refresh() async {
//     if (!is_loading) {
//       setState(() {
//         is_loading = true;
//       });
//       getStocksData();
//       setState(() {
//         _data;
//         is_loading;
//       });
//       Fluttertoast.showToast(msg: "Yenile");
//     }
//   }
//
//   //frontend
//
//   @override
//   Widget build(BuildContext context) {
//     TextStyle sty_txt_lbl = TextStyle(
//       //görünen verilerin etiketlerinin style değişkeni
//       fontSize: 15,
//       fontWeight: FontWeight.bold,
//       color: Color(0xff333645),
//     );
//     TextStyle sty_txt_veri = TextStyle(
//       //görünen verilerin style değişkeni
//       fontSize: 16,
//       color: Colors.white,
//     );
//
//     return WillPopScope(
//       onWillPop: () async {
//         return true;
//       },
//       child: Scaffold(
//           body: RefreshIndicator(
//             onRefresh: _refresh,
//             child: !is_loading
//                 ? SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       TextButton(
//                           style: ButtonStyle(
//                               shape: MaterialStateProperty.all(
//                                   RoundedRectangleBorder(
//                                     side:
//                                     BorderSide(color: Color(0XFF333645)),
//                                     borderRadius: BorderRadius.circular(10),
//                                   ))),
//                           onPressed: () => _selectStartDate(context),
//                           child: Text(
//                               style: const TextStyle(
//                                   color: Color(0xff333645)),
//                               buton_1)),
//                       TextButton(
//                           style: ButtonStyle(
//                               shape: MaterialStateProperty.all(
//                                   RoundedRectangleBorder(
//                                     side:
//                                     BorderSide(color: Color(0XFF333645)),
//                                     borderRadius: BorderRadius.circular(10),
//                                   ))),
//                           onPressed: () => _selectEndDate(context),
//                           child: Text(
//                               style: const TextStyle(
//                                   color: Color(0xff333645)),
//                               buton_2)),
//                       ElevatedButton(
//                           style: const ButtonStyle(
//                               backgroundColor:
//                               MaterialStatePropertyAll(
//                                   Color(0XFF333645))),
//                           onPressed: () {
//                             if (buton_1 != gun_1 && buton_2 != gun_2)
//                             {
//                               setState(() {
//                                 filtre = true;
//                                 is_loading = true;
//                                 buton_1 = gun_1;
//                                 buton_2 = gun_2;
//                               });
//                               getStocksData();
//                             } else {
//                               Fluttertoast.showToast(
//                                   msg:
//                                   "Lütfen tarihleri kontrol edin");
//                             }
//                           },
//                           child: const Text("Filtrele")),
//                     ],
//                   ),
//                   if (filtre)
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10),
//                       child: ElevatedButton(
//                         style: const ButtonStyle(
//                           backgroundColor: MaterialStatePropertyAll(
//                               Colors.deepOrange),
//                         ),
//                         onPressed: () {
//                           setState(() {
//                             is_loading = true;
//                             filtre = false;
//                             buton_1 = gun_1;
//                             buton_2 = gun_2;
//                           });
//                         },
//                         child: const Text("Tümünü görüntüle"),
//                       ),
//                     ),
//                   ListView.builder(
//                     shrinkWrap: true,
//                     physics: NeverScrollableScrollPhysics(),
//                     itemCount: _data?.length ?? 0,
//                     itemBuilder: (context, index) {
//                       return ListTile(
//                         title: Container(
//                           decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                               begin: Alignment.topCenter,
//                               end: Alignment.bottomRight,
//                               colors: const [
//                                 Colors.deepOrange,
//                                 Color(0xff333645),
//                               ],
//                             ),
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.all(20),
//                             child: Column(
//                               crossAxisAlignment:
//                               CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Text(style: sty_txt_lbl, "ID: "),
//                                     Text(
//                                         style: sty_txt_veri,
//                                         "${_data[index]['Id']}"),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Text(
//                                         style: sty_txt_lbl,
//                                         "Lisans NO: "),
//                                     Text(
//                                         style: sty_txt_veri,
//                                         "${_data[index]['LisansNo']}"),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Text(
//                                         style: sty_txt_lbl,
//                                         "Bayi Şehri: "),
//                                     Text(
//                                         style: sty_txt_veri,
//                                         "${_data[index]['BayiSehir']}"),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Text(
//                                         style: sty_txt_lbl,
//                                         "Tarih: "),
//                                     Text(
//                                         style: sty_txt_veri,
//                                         "${_data[index]['Tarih'] != null ? DateFormat('dd.MM.yyyy HH:mm').format(
//                                           DateTime.parse(
//                                               _data[index]
//                                               ['Tarih']),
//                                         ) : 'Tarih Yok'}"),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Text(
//                                         style: sty_txt_lbl,
//                                         "Yakıt: "),
//                                     Text(
//                                         style: sty_txt_veri,
//                                         "${_data[index]['YakitAd']}"),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Text(
//                                         style: sty_txt_lbl,
//                                         "Tank NO: "),
//                                     Text(
//                                         style: sty_txt_veri,
//                                         "${_data[index]['TankNo']}"),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Text(
//                                         style: sty_txt_lbl,
//                                         "Tank Kapasitesi: "),
//                                     Text(
//                                         style: sty_txt_veri,
//                                         "${_data[index]['TankKapasite'] ?? ''}"),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Text(
//                                         style: sty_txt_lbl,
//                                         "Dönem Baş.: "),
//                                     Text(
//                                         style: sty_txt_veri,
//                                         "${_data[index]['DonemBas'] ?? ''}"),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Text(
//                                         style: sty_txt_lbl,
//                                         "Dolum: "),
//                                     Text(
//                                         style: sty_txt_veri,
//                                         "${_data[index]['Dolum'] ?? ''}"),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Text(
//                                         style: sty_txt_lbl,
//                                         "Pompa Satış: "),
//                                     Text(
//                                         style: sty_txt_veri,
//                                         "${_data[index]['PompaSatis'] ?? ''}"),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Text(
//                                         style: sty_txt_lbl,
//                                         "Dönem Son.: "),
//                                     Text(
//                                         style: sty_txt_veri,
//                                         "${_data[index]['DonemSon'] ?? ''}"),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Text(
//                                         style: sty_txt_lbl,
//                                         "Kriter 1: "),
//                                     Text(
//                                         style: sty_txt_veri,
//                                         "${_data[index]['Kriter1'] ?? ''}"),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Text(
//                                         style: sty_txt_lbl,
//                                         "Kriter 2: "),
//                                     Text(
//                                         style: sty_txt_veri,
//                                         "${_data[index]['Kriter2'] ?? ''}"),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Text(
//                                         style: sty_txt_lbl,
//                                         "Kriter 1 Değer: "),
//                                     Text(
//                                         style: sty_txt_veri,
//                                         "${_data[index]['Kriter1Deger'] ?? ''}"),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Text(
//                                         style: sty_txt_lbl,
//                                         "Kriter 2 Değer: "),
//                                     Text(
//                                         style: sty_txt_veri,
//                                         "${_data[index]['Kriter2Deger'] ?? ''}"),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Text(
//                                         style: sty_txt_lbl,
//                                         "Bayi Ünvan: "),
//                                     Expanded(
//                                       child: Text(
//                                           style: sty_txt_veri,
//                                           "${_data[index]['BayiUnvan']}"),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             )
//                 : Center(
//               child: CircularProgressIndicator(
//                 color: Colors.deepOrange,
//               ),
//             ),
//           ))
//     );
//   }
// }
