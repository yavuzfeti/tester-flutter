/*import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart' as xml;
import 'dart:convert';


class veri {
  final String string;

  veri({required this.string});
}

Future<String> fetchData() async {
  var response = await http.get(Uri.parse('http://94.102.69.93:8090/wservis/mobilestation.asmx/TankSonDurum?userName=Entegre&Password=123654&tankno=1&bayiId=19'));
  if (response.statusCode == 200){
    var xmlveri = response.body.toString();

    var document = xml.XmlDocument.parse(xmlveri);
    // XML verilerini Map'e dönüştürme

    Map<String, dynamic> xmlData = Map.fromEntries(
        document.children.map((node) =>
            MapEntry(node.string, node.children.length == 1
                ? node.firstChild?.text
                : List.from(node.children.map((child) => child.text)))));


// JSON formatına dönüştürme
    String jsonData = jsonEncode(xmlData);
    return jsonData;
  } else {
    throw Exception('XML verileri alınamadı: ${response.statusCode}');
  }
}

class api_sample_3 extends StatefulWidget {
  const api_sample_3({Key? key}) : super(key: key);

  @override
  State<api_sample_3> createState() => _api_sample_3State();
}

class _api_sample_3State extends State<api_sample_3> {
  late String veri;
  bool isLoading = true;


  @override
  void initState() {
    super.initState();
    fetchData().then((value) {
      setState(() {
        veri = value;
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Api XML get metodları 3"),
          ),
          body: Center(
            child: isLoading ? CircularProgressIndicator() : Text(veri),
          )
      ),
    );
  }
}*/
