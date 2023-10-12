import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:signalr_core/signalr_core.dart';

//Background.listenToNotificationStart();

class Background
{
  static int index = 1;
  static String? userId;

  static final hubConnection = HubConnectionBuilder().withUrl('https://kursdefteri.com.tr/ip-hub').build();
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  static AndroidNotificationDetails android = AndroidNotificationDetails(
    "kitx",
    "kitx_channel",
    priority: Priority.high,
    importance: Importance.high,
    icon: "@mipmap/ic_launcher",
    color: Colors.blue,
  );

  // static final ios = IOSNotificationDetails(
  //   presentAlert: true,
  //   presentBadge: true,
  //   presentSound: true,
  //   badgeNumber: 1,
  // );

  static NotificationDetails notDet = NotificationDetails(
    android: android,
    // iOS: ios
  );

  static request() async
  {
    var status = await Permission.notification.request();
    if (status.isGranted)
    {
    }
    else if (status.isDenied)
    {
    }
    else if (status.isPermanentlyDenied)
    {
    }
  }

  static bildirim({required String mesage}) async
  {
    await flutterLocalNotificationsPlugin.show(
        index,
        "Bildirim başlığı",
        mesage,
        notDet,
      );
  }

  static start() async
  {
    FlutterBackgroundService service = FlutterBackgroundService();
    await service.configure(
      androidConfiguration: AndroidConfiguration(
        onStart: (ServiceInstance s) {print("Çlaışıyor");},
        autoStart: true,
        autoStartOnBoot: true,
        isForegroundMode: true,
        notificationChannelId: 'kitx_c',
        initialNotificationTitle: 'AWESOME SERVICE',
        initialNotificationContent: 'Initializing',
        foregroundServiceNotificationId: 0,
      ),
      iosConfiguration:IosConfiguration(),
    );

    await service.startService();
  }

  static listenToNotificationStart() async
  {
    if (hubConnection.state == HubConnectionState.disconnected)
    {
      await request();
      await hubConnection.start();
      hubConnection.on('QrCodeRead', (arguments)
      {
        bildirim(mesage: arguments.toString());
        index++;
      });
    }
  }
}