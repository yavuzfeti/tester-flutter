import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tester/Animasyon.dart';
import 'package:tester/Servisler/Languages.dart';

final navKey = GlobalKey<NavigatorState>();

void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  Languages.selectLanguage();

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
        home: animasyon(),
      ),
    );
}
