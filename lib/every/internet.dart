// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
// import 'package:tester/every/NotInternet.dart';
// import 'package:tester/every/app9.dart';
// class app10 extends StatefulWidget {
//   const app10({Key? key}) : super(key: key);
//
//   @override
//   State<app10> createState() => _app10State();
// }
//
// class _app10State extends State<app10> {
//   late StreamSubscription<ConnectivityResult> _connectivitySubscription;
//   bool _internet = true;
//
//   @override
//   void initState() {
//     super.initState();
//     denetleme();
//   }
// /*
//   @override
//   void dispose() {
//     super.dispose();
//     _connectivitySubscription?.cancel();
//   }*/
//
//   Future<void> denetleme() async {
//     bool result = await InternetConnectionChecker().hasConnection;
//     setState(() {
//       _internet = result;
//     });
//     _connectivitySubscription =
//         Connectivity().onConnectivityChanged.listen((sonuc) {
//           setState(() {
//             _internet = (sonuc == ConnectivityResult.mobile ||
//                 sonuc == ConnectivityResult.wifi);
//           });
//         });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: _internet
//           ? app9()
//           : not_internet(),
//     );
//   }
// }
