import 'package:flutter/material.dart';
import 'package:tester/Servisler/Languages.dart';
import 'package:tester/Home.dart';
import 'Servisler/Network.dart';

class dil_destegi extends StatefulWidget {
  const dil_destegi({super.key});


  @override
  State<dil_destegi> createState() => _dil_destegiState();
}

class _dil_destegiState extends State<dil_destegi> {

  String? code;

  void al() async
  {
    code = await storage.read(key: "languageCode");
    setState(() {
      code;
    });
  }

  @override
  void initState() {
    al();
    super.initState();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Languages.language.toString()),
            Text(Languages.view(Languages.mrb)),
            Text(Languages.view(Languages.evet)),
            Text(Languages.languages[Languages.language]),
            Text(Languages.mrb[Languages.language]),
            Text(Languages.hosgeldiniz[Languages.language]),
            Text(Languages.gunaydin[Languages.language]),
            Text(Languages.iyiGeceler[Languages.language]),
            Text(Languages.hoscaKal[Languages.language]),
            Text(Languages.tesekkur[Languages.language]),
            Text(Languages.lutfen[Languages.language]),
            Text(Languages.affedersiniz[Languages.language]),
            Text(Languages.evet[Languages.language]),
            DropdownButton(
                underline: Container(),
                value: code,
                  items: const [
                    DropdownMenuItem(
                        child: Text("Türkçe"),
                      value: "0",
                    ),
                    DropdownMenuItem(
                        child: Text("English"),
                      value: "1",
                    ),
                    DropdownMenuItem(
                        child: Text("Deutsch"),
                      value: "2",
                    ),
                    DropdownMenuItem(
                      child: Text("Español"),
                      value: "3",
                    ),
                  ],
                  onChanged: (value) async
                  {
                    await storage.write(key: "languageCode", value: value);
                    setState(() {
                      code = value;
                      Languages.language = int.parse(value.toString());
                    });
                  }
              ),
            ElevatedButton(
              child: Text("İşlem front"),
              onPressed: ()
              {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const islem_front()),);
              },
            ),
          ],
        ),
      ),
    );
  }
}