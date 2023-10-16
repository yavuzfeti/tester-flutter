import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:signalr_core/signalr_core.dart';
import 'package:tester/BackgroundFront.dart';
import 'package:tester/BackgroundTask.dart';
import 'package:workmanager/workmanager.dart';

Workmanager work = Workmanager();

@pragma('vm:entry-point')
void callbackDispatcher() {
  work.executeTask((task, inputData) async
  {
    int index = 1;

    final hubConnection = HubConnectionBuilder().withUrl('https://kursdefteri.com.tr/ip-hub').build();

    bildirim({required String mesage}) async
    {
      bool izin = true;
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

    listenToNotificationStart() async
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
    print('çalışmaya başladı');
    listenToNotificationStart();
    return Future.value(true);
  });
}

void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  //Background.listenToNotificationStart();

  // work.initialize(callbackDispatcher);
  // work.registerOneOffTask(
  //   "gorev",
  //   "gorew",
  //     constraints: Constraints(
  //         networkType: NetworkType.connected,
  //         requiresBatteryNotLow: true,
  //         requiresCharging: true,
  //         requiresDeviceIdle: true,
  //         requiresStorageNotLow: true
  //     ),
  // );

  Background.listenToNotificationStart();

  runApp(
      MaterialApp(
        home: BackgroundFront(),
      ),
    );
}
