import 'package:flutter/material.dart';
import 'package:tester/BackgroundTask.dart';

class BackgroundFront extends StatefulWidget {
  const BackgroundFront({super.key});

  @override
  State<BackgroundFront> createState() => _BackgroundFrontState();
}

class _BackgroundFrontState extends State<BackgroundFront> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(Background.index.toString()),),
    );
  }
}
