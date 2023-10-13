import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tester/BackgroundFront.dart';
import 'package:workmanager/workmanager.dart';

final navKey = GlobalKey<NavigatorState>();

Workmanager work = Workmanager();

@pragma('vm:entry-point')
void callbackDispatcher() {
    work.executeTask((task, inputData) async
    {
      print("çalışıyor");
      return Future.value(true);
    });
}

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  Workmanager().cancelAll();
  work.initialize(
      callbackDispatcher,
      isInDebugMode: false
  );
  work.registerOneOffTask(
    "periodic-task-identifier",
    "simplePeriodicTask",
      constraints: Constraints(
          networkType: NetworkType.connected,
          requiresBatteryNotLow: true,
          requiresCharging: true,
          requiresDeviceIdle: true,
          requiresStorageNotLow: true
      ),
  );

  //Background.listenToNotificationStart();

  runApp(
      MaterialApp(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],

        supportedLocales: [
          const Locale('tr', 'TR'),
          const Locale('en', 'US'),
          const Locale('de', ''),
          const Locale('es', ''),
        ],

        locale: Locale('tr', 'TR'),

        theme: ThemeData(
          primaryColor: Colors.deepPurple,
          primarySwatch: Colors.deepPurple,
          hintColor: Colors.deepPurple,
          brightness: Brightness.light,
        ),
        debugShowCheckedModeBanner: false,
        navigatorKey: navKey,
        home: BackgroundFront(),
      ),
    );
}
