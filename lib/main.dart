import 'dart:async';
import 'dart:isolate';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:tester/BackgroundFront.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();

  BackgroundIsolateBinaryMessenger.ensureInitialized(Isolate.currentRootIsolate.token);

  final isolate = await Isolate.spawn((message)
  {
    int index = 0;
    Timer.periodic(const Duration(seconds: 2), (timer) {
      FlutterLocalNotificationsPlugin().show(
        index,
        "Bildirim başlığı",
        "Boş",
        const NotificationDetails(
          android: AndroidNotificationDetails(
            "kitx",
            "kitx_channel",
            priority: Priority.high,
            importance: Importance.high,
            icon: "@mipmap/ic_launcher",
            color: Colors.blue,
          ),
        ),
      );
      index++;
    });
  }, null);

  //Background.listenToNotificationStart();

  runApp(
      MaterialApp(
        home: BackgroundFront(),
      ),
    );
}
