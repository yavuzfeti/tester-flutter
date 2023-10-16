import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:signalr_core/signalr_core.dart';
import 'package:workmanager/workmanager.dart';

class Background
{
  static int index = 1;

  static final hubConnection = HubConnectionBuilder().withUrl('https://kursdefteri.com.tr/ip-hub').build();

  static Future<bool> request() async
  {
    var status = await Permission.notification.request();
    if (status.isGranted)
    {
     return true;
    }
    else if (status.isDenied)
    {
      return false;
    }
    else if (status.isPermanentlyDenied)
    {
      return false;
    }
    else
    {
      return false;
    }
  }

  static bildirim({required String mesage}) async
  {
    bool izin = await request();
    if(izin)
    {
      await FlutterLocalNotificationsPlugin().show(
        index,
        "Bildirim başlığı",
        mesage,
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
      print("\nBİLDİRİM\n: $mesage");
    }
  }

  static listenToNotificationStart() async
  {
    if (hubConnection.state == HubConnectionState.disconnected)
    {
      await hubConnection.start();
      hubConnection.on('QrCodeRead', (arguments)
      {
        bildirim(mesage: arguments.toString());
      });
    }
  }
}
