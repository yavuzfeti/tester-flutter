// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
//
// class api_edit extends StatefulWidget {
//   @override
//   State<api_edit> createState() => _api_editState();
// }
//
// class _api_editState extends State<api_edit> {
//   late StreamSubscription<ConnectivityResult> _connectivitySubscription;
//   bool _internet = true;
//
//   @override
//   void initState() {
//     super.initState();
//     denetleme();
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _connectivitySubscription?.cancel();
//   }
//
//   Future<void> denetleme() async {
//     _connectivitySubscription =
//         Connectivity().onConnectivityChanged.listen((sonuc) {
//           setState(() {
//             _internet = (sonuc == ConnectivityResult.mobile ||
//                 sonuc == ConnectivityResult.wifi);
//           });
//         });
//   }
//
//   final _base_URL_Controller = TextEditingController();
//   final _e_posta_Controller = TextEditingController();
//   final _bayi_id_controller = TextEditingController();
//   final _lisans_no_Controller = TextEditingController();
//   final _tel_no_Controller = TextEditingController();
//   final _kullanici_adi_Controller = TextEditingController();
//   final _sifre_bir_controller = TextEditingController();
//   final _sifre_iki_controller = TextEditingController();
//
//
//   FocusNode _odak_1 = FocusNode();
//   FocusNode _odak_2 = FocusNode();
//   FocusNode _odak_3 = FocusNode();
//   FocusNode _odak_4 = FocusNode();
//   FocusNode _odak_5 = FocusNode();
//   FocusNode _odak_6 = FocusNode();
//   FocusNode _odak_7 = FocusNode();
//   FocusNode _odak_8 = FocusNode();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: Colors.deepOrange,
//           title: Text("Ayarlar"),
//         ),
//         body: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Form(
//                 child: Column(
//                   children: [
//                     TextFormField(
//                       focusNode: _odak_1,
//                       cursorColor: Colors.deepOrange,
//                       controller: _base_URL_Controller,
//                       autofocus: true,
//                       keyboardType: TextInputType.url,
//                       decoration: InputDecoration(
//                           labelStyle: TextStyle(color: Colors.deepOrange),
//                           labelText: "URL",
//                           hintText: "Aktivasyon için verilen URL'yi giriniz",
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20)),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.deepOrange),
//                             borderRadius: BorderRadius.circular(10),
//                           )),
//                       onEditingComplete: () {
//                         _odak_1.unfocus();
//                         FocusScope.of(context).requestFocus(_odak_2);
//                       },
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     TextFormField(
//                       focusNode: _odak_2,
//                       cursorColor: Colors.deepOrange,
//                       controller: _lisans_no_Controller,
//                       decoration: InputDecoration(
//                           labelStyle: TextStyle(color: Colors.deepOrange),
//                           labelText: "Lisans NO",
//                           hintText: "Lisans numaranızı giriniz",
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20)),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.deepOrange),
//                             borderRadius: BorderRadius.circular(10),
//                           )),
//                       onEditingComplete: () {
//                         _odak_2.unfocus();
//                         FocusScope.of(context).requestFocus(_odak_3);
//                       },
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     TextFormField(
//                       focusNode: _odak_3,
//                       cursorColor: Colors.deepOrange,
//                       keyboardType: TextInputType.number,
//                       controller: _bayi_id_controller,
//                       decoration: InputDecoration(
//                           labelStyle: TextStyle(color: Colors.deepOrange),
//                           labelText: "Bayi ID",
//                           hintText: "Bayi ID'nizi giriniz",
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20)),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.deepOrange),
//                             borderRadius: BorderRadius.circular(10),
//                           )),
//                       onEditingComplete: () {
//                         _odak_3.unfocus();
//                         FocusScope.of(context).requestFocus(_odak_4);
//                       },
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     TextFormField(
//                       focusNode: _odak_4,
//                       keyboardType: TextInputType.emailAddress,
//                       cursorColor: Colors.deepOrange,
//                       controller: _e_posta_Controller,
//                       decoration: InputDecoration(
//                           labelStyle: TextStyle(color: Colors.deepOrange),
//                           labelText: "E-Posta",
//                           hintText: "E-Posta adresinizi giriniz",
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20)),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.deepOrange),
//                             borderRadius: BorderRadius.circular(10),
//                           )),
//                       onEditingComplete: () {
//                         _odak_4.unfocus();
//                         FocusScope.of(context).requestFocus(_odak_5);
//                       },
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     TextFormField(
//                       focusNode: _odak_5,
//                       cursorColor: Colors.deepOrange,
//                       controller: _tel_no_Controller,
//                       keyboardType: TextInputType.phone,
//                       decoration: InputDecoration(
//                           labelStyle: TextStyle(color: Colors.deepOrange),
//                           labelText: "Telefon NO",
//                           hintText:
//                           "Başında '0' olmadan telefon numaranızı giriniz",
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20)),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.deepOrange),
//                             borderRadius: BorderRadius.circular(10),
//                           )),
//                       onEditingComplete: () {
//                         _odak_5.unfocus();
//                         FocusScope.of(context).requestFocus(_odak_6);
//                       },
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     TextFormField(
//                       focusNode: _odak_6,
//                       cursorColor: Colors.deepOrange,
//                       controller: _kullanici_adi_Controller,
//                       decoration: InputDecoration(
//                           labelStyle: TextStyle(color: Colors.deepOrange),
//                           labelText: "Kullanıcı Adı",
//                           hintText: "Kullanıcı adınızı giriniz",
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20)),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.deepOrange),
//                             borderRadius: BorderRadius.circular(10),
//                           )),
//                       onEditingComplete: () {
//                         _odak_6.unfocus();
//                         FocusScope.of(context).requestFocus(_odak_7);
//                       },
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     TextFormField(
//                       focusNode: _odak_7,
//                       cursorColor: Colors.deepOrange,
//                       obscureText: true,
//                       controller: _sifre_bir_controller,
//                       decoration: InputDecoration(
//                           labelStyle: TextStyle(color: Colors.deepOrange),
//                           labelText: "Şifre",
//                           hintText: "Şifrenizi giriniz",
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20)),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.deepOrange),
//                             borderRadius: BorderRadius.circular(10),
//                           )),
//                       onEditingComplete: () {
//                         _odak_7.unfocus();
//                         FocusScope.of(context).requestFocus(_odak_8);
//                       },
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     TextFormField(
//                       focusNode: _odak_8,
//                       cursorColor: Colors.deepOrange,
//                       obscureText: true,
//                       controller: _sifre_iki_controller,
//                       decoration: InputDecoration(
//                           labelStyle: TextStyle(color: Colors.deepOrange),
//                           hintText: "Şifrenizi tekrar giriniz",
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20)),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.deepOrange),
//                             borderRadius: BorderRadius.circular(10),
//                           )),
//                       onEditingComplete: () {
//                         _odak_8.unfocus();
//                       },
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SizedBox(
//                           width: 125,
//                           height: 50,
//                           child: ElevatedButton(
//                             style: ButtonStyle(
//                                 foregroundColor: const MaterialStatePropertyAll(
//                                     Colors.deepOrange),
//                                 backgroundColor: const MaterialStatePropertyAll(
//                                     Colors.white),
//                                 shape: MaterialStateProperty.all(
//                                     RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(15),
//                                         side: BorderSide(
//                                             color: Colors.deepOrange)))),
//                             onPressed: () {
//                             },
//                             child: Text(
//                               "Kayıtları sil",
//                               textAlign: TextAlign.center,
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         SizedBox(
//                           width: 125,
//                           height: 50,
//                           child: ElevatedButton(
//                               style: ButtonStyle(
//                                   foregroundColor:
//                                   const MaterialStatePropertyAll(
//                                       Colors.white),
//                                   backgroundColor:
//                                   const MaterialStatePropertyAll(
//                                       Colors.deepOrange),
//                                   shape: MaterialStateProperty.all(
//                                       RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(15),
//                                       ))),
//                               onPressed: null,
//                               child: Text("Kaydet")),
//                         ),
//                       ],
//                     )
//                   ],
//                 )),
//           ),
//         );
//   }
// }
