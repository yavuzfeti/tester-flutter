// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
//
// import 'not_internet.dart';
//
// class home extends StatefulWidget {
//   @override
//   State<home> createState() => _homeState();
// }
//
// class _homeState extends State<home> {
//
//   //internet dinleyici tanımlama
//   late StreamSubscription<ConnectivityResult> _connectivitySubscription;
//   bool _internet = true;
//
//   @override
//   void initState() {
//     super.initState();
//     //internet denetleme fonksiyonu
//     denetleme();
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     //dinleyiciyi iptal etme
//     _connectivitySubscription?.cancel();
//   }
//
//   Future<void> denetleme() async {
//     //dns isteği atarak bir defalık internet var mı kontrol eder usb wifi mobil bluetooth farketmez atılan paket geri gelirse true döner
//     bool result = await InternetConnectionChecker().hasConnection;
//     setState(() {
//       _internet = result;
//     });
//     //dinleyici sadece wifi ve mobil veri tuşlarını dinler, usb ya da blutetooth ile giren biri tuşlara dokunmadığı sürece kullanmaya devam edebilir
//     _connectivitySubscription =
//         Connectivity().onConnectivityChanged.listen((sonuc){
//           setState(() {
//             _internet = (sonuc == ConnectivityResult.mobile ||
//                 sonuc == ConnectivityResult.wifi);
//           });
//
//           if (_internet == false) {
//             showDialog(
//               context: context,
//               barrierDismissible: false, // added this line
//               builder: (BuildContext context) {
//                 return AlertDialog(
//                   content: Text(
//                     'Bu tarih aralığında satış bulunamadı.',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   backgroundColor: Color(0XFF333645),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 );
//               },
//             );
//           }
//
//         });
//
//   }
//
//   //butonların dışındaki containerın decor değişkeni
//   final box_decor = BoxDecoration(
//     gradient: LinearGradient(
//       begin: Alignment.topCenter,
//       end: Alignment.bottomRight,
//       colors: const [
//         Colors.deepOrange,
//         Color(0XFF333645),
//       ],
//     ),
//     borderRadius: BorderRadius.circular(10),
//   );
//
//   //butonların hepsini saydam yapan değişken, butonu saydam yaparak containerın dekorasyonu gözükür
//   final buton_decor = ButtonStyle(
//       backgroundColor: MaterialStatePropertyAll(Colors.transparent));
//
//   @override
//   Widget build(BuildContext context) {
//     //butonların genişliğini cihaza göre oranlayan değişken
//     final butonsize = (MediaQuery.of(context).size.width) * 0.3;
//     //butonların dikey uzunluğunu cihaza göre
//     final butonheigh = (MediaQuery.of(context).size.height) * 0.11;
//     return WillPopScope(
//       onWillPop: () async {
//         //geri tuşuna basılınca çıkan alert dialog seçilene göre true ya da false ile devam eder
//         return (await showDialog(
//           context: context,
//           builder: (context) => AlertDialog(
//             title: Text(
//               "Çıkış",
//               style: TextStyle(color: Colors.white),
//             ),
//             content: Text(
//               "Uygulamadan çıkmak istiyor musunuz?",
//               style: TextStyle(color: Colors.white),
//             ),
//             actions: <Widget>[
//               TextButton(
//                 onPressed: () => Navigator.of(context).pop(true),
//                 child: Text(
//                     style: TextStyle(color: Colors.deepOrange), "Evet"),
//               ),
//               TextButton(
//                 onPressed: () => Navigator.of(context).pop(false),
//                 child: Text(style: TextStyle(color: Colors.white), "Hayır"),
//               ),
//             ],
//             backgroundColor: Color(0XFF333645),
//             elevation: 0,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(25),
//             ),
//           ),
//         )) ??
//             false;
//       },
//       child: Scaffold(
//           //her sayfadaki yandan açılan bar
//           body: SingleChildScrollView(//scroll: ekran sığmadığı durumlarda çalışır
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(//butonlar burada başlıyor satır sütun satır şeklinde sıralı
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Column(
//                       children: [
//                         Row(
//                           children: [
//                             Container(
//                               width: butonsize,
//                               height: butonheigh,
//                               decoration: box_decor,
//                               child: ElevatedButton(
//                                 style: buton_decor,
//                                 onPressed: null ,
//                                 child: Column(
//                                   mainAxisAlignment:
//                                   MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     Icon(
//                                       Icons.local_gas_station_rounded,
//                                     ),
//                                     Text(
//                                         style: TextStyle(fontSize: 12),
//                                         'Pompa'),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Container(
//                               decoration: box_decor,
//                               width: butonsize,
//                               height: butonheigh,
//                               child: ElevatedButton(
//                                 style: buton_decor,
//                                 onPressed: null,
//                                 child: Column(
//                                   mainAxisAlignment:
//                                   MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     Icon(
//                                       Icons.oil_barrel_rounded,
//                                     ),
//                                     Text(
//                                         style: TextStyle(fontSize: 12),
//                                         'Tank'),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Container(
//                               decoration: box_decor,
//                               width: butonsize,
//                               height: butonheigh,
//                               child: ElevatedButton(
//                                 style: buton_decor,
//                                 onPressed:null,
//                                 child: Column(
//                                   mainAxisAlignment:
//                                   MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     Icon(
//                                       Icons.gas_meter_rounded,
//                                     ),
//                                     Text(
//                                         style: TextStyle(fontSize: 12),
//                                         'İstasyon'),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Row(
//                           children: [
//                             Container(
//                               decoration: box_decor,
//                               width: butonsize,
//                               height: butonheigh,
//                               child: ElevatedButton(
//                                 style: buton_decor,
//                                 onPressed: null,
//                                 child: Column(
//                                   mainAxisAlignment:
//                                   MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     Icon(
//                                       Icons.sell_rounded,
//                                     ),
//                                     Text(
//                                         style: TextStyle(fontSize: 12),
//                                         'Satışlar'),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Container(
//                               decoration: box_decor,
//                               width: butonsize,
//                               height: butonheigh,
//                               child: ElevatedButton(
//                                 style: buton_decor,
//                                 onPressed: null,
//                                 child: Column(
//                                   mainAxisAlignment:
//                                   MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     Icon(
//                                       Icons.inventory,
//                                     ),
//                                     Text(
//                                         style: TextStyle(fontSize: 12),
//                                         'Stok')
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Container(
//                               decoration: box_decor,
//                               width: butonsize,
//                               height: butonheigh,
//                               child: ElevatedButton(
//                                 style: buton_decor,
//                                 onPressed:null,
//                                 child: Column(
//                                   mainAxisAlignment:
//                                   MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     Icon(
//                                       Icons.hourglass_bottom_rounded,
//                                     ),
//                                     Text(
//                                         style: TextStyle(fontSize: 12),
//                                         'Vardiya'),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Row(
//                           children: [
//                             Container(
//                               decoration: box_decor,
//                               width: butonsize,
//                               height: butonheigh,
//                               child: ElevatedButton(
//                                 style: buton_decor,
//                                 onPressed: null,
//                                 child: Column(
//                                   mainAxisAlignment:
//                                   MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     Text(
//                                         style: TextStyle(fontSize: 12),
//                                         'Fiyat'),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Container(
//                               decoration: box_decor,
//                               width: butonsize,
//                               height: butonheigh,
//                               child: ElevatedButton(
//                                 style: buton_decor,
//                                 onPressed: null,
//                                 child: Column(
//                                   mainAxisAlignment:
//                                   MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     Icon(
//                                       Icons.call_rounded,
//                                     ),
//                                     Text(
//                                         style: TextStyle(fontSize: 12),
//                                         'Destek'),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Container(
//                               decoration: box_decor,
//                               width: butonsize,
//                               height: butonheigh,
//                               child: ElevatedButton(
//                                 style: buton_decor,
//                                 onPressed: null,
//                                 child: Column(
//                                   mainAxisAlignment:
//                                   MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     Icon(
//                                       Icons.warning_rounded,
//                                     ),
//                                     Text(
//                                         style: TextStyle(fontSize: 12),
//                                         'Alarmlar')
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           )),//internet olmadığında açılan alert
//     );
//   }
// }
