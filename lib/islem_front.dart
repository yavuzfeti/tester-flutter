import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:tester/Servisler/Mail.dart';
import 'package:tester/Servisler/Internet.dart';
import 'package:tester/every/Network2.dart';
import 'package:tester/Servisler/Network.dart';
import 'package:tester/vikiarama.dart';

class islem_front extends StatefulWidget {
  const islem_front({super.key});

  @override
  State<islem_front> createState() => _islem_frontState();
}

class _islem_frontState extends State<islem_front>
{
  // Network account = Network("Account");
  // Network siniflar = Network("Class");
  //
  // run2() async
  // {
    // await Future.delayed(const Duration(seconds: 1), () async
    // {
    //   dynamic login = await account.post(adres: "login", {
    //     "username":"Admin",
    //     "password":"Admin.123"
    //   });
    //
    //   print(login);
    //
    //   await storage.write(key: 'token' , value: "${login["data"]["accessToken"]}");
    // });
    //
    // await Future.delayed(const Duration(seconds: 2), () async
    // {
    //   print(await siniflar.get());
    // });
    //
    // await Future.delayed(const Duration(seconds: 3), () async
    // {
    //   print(await siniflar.get());
    // });
    //
    // await Future.delayed(const Duration(seconds: 3), () async
    // {
    //   print(await siniflar.post({"name":"Php"}));
    // });
    //
    // await Future.delayed(const Duration(seconds: 4), () async
    // {
    //   print(await siniflar.put({"id":"17","name":"C++"}));
    // });
    //
    // await Future.delayed(const Duration(seconds: 5), () async
    // {
    //   print(await siniflar.delete("17"));
    // });

  //   dynamic data = await siniflar.get();
  //
  //   for(int x = 13 ; x < 13+data.length ; x++)
  //   {
  //     print("\n");
  //     print(x);
  //     try
  //     {
  //       print(await siniflar.delete(x.toString()));
  //     }
  //     catch (e)
  //     {
  //       print("Bu öge zaten yok");
  //     }
  //   }
  //
  //   print("\n");
  //   print("\n");
  //   print("\n");
  //
  //   print(await siniflar.get());
  // }

  Mail mail = Mail("yavuz.feti@metaakdeniz.com","yfQW070809..");

  run() async
  {

    await Future.delayed(const Duration(seconds: 2), () async
    {
      await mail.kurumsalServer(adres: "mail.kurumsaleposta.com", port: 465, ssl: true ,ignoreBadCertificate: true);

      // var cevap = await mail.gonder(
      //     alici: "yavuzfeti0@gmail.com",
      //     konu: "konu örneğinjkldn jklsn kldsn lokdsn lknlkn lks",
      //     mesaj: "mesaj örneğis ds sd d mnöx znxb jdebcıoebouebwcouewec",
      //     gorunenAd: "EMAİL SERVİCE"
      // );

      var cevap = await mail.cokluGonder(
          alicilar: ["yavuzfeti0@gmail.com","yavuzfeti@outlook.com"],
          konu: "konu örneğinjkldn jklsn kldsn lokdsn lknlkn lks",
          mesaj: "mesaj örneğis ds sd d mnöx znxb jdebcıoebouebwcouewec",
          gorunenAd: "EMAİL SERVİCE 4"
      );

      print(cevap.toString());
    });
  }

  @override
  void initState()
  {
    super.initState();
    Internet.baslat();
    run();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Wikipedia Arama"),
          onPressed: ()
          {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VikiAra()),);
          },
        ),
      ),
    );
  }
}