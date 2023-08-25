// import 'dart:async';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
//
//
// late StreamSubscription<ConnectivityResult> _connectivitySubscription;
// bool _internet = true;
//
// Future<void> denetleme() async {
//   bool result = await InternetConnectionChecker().hasConnection;
//   setState(() {
//     _internet = result;
//   });
//   Connectivity().onConnectivityChanged.listen((sonuc) {
//     setState(() {
//       _internet = (sonuc == ConnectivityResult.mobile || sonuc == ConnectivityResult.wifi);
//     });
//   });
//   return internet;
// }