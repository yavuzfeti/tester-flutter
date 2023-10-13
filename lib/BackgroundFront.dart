import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tester/BackgroundTask.dart';

class BackgroundFront extends StatefulWidget {
  const BackgroundFront({super.key});

  @override
  State<BackgroundFront> createState() => _BackgroundFrontState();
}

class _BackgroundFrontState extends State<BackgroundFront> {

  @override
  void initState()
  {
    request();
    super.initState();
  }

  @override
  void didChangeDependencies()
  {
    setState(() {
      Background.index;
    });
    super.didChangeDependencies();
  }

  Future<bool> request() async
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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(child: Text(Background.index.toString()),),
    );
  }
}
