import 'package:flutter/material.dart';
import 'package:tester/Servisler/Network.dart';

class tarih extends StatefulWidget {
  const tarih({super.key});

  @override
  State<tarih> createState() => _tarihState();
}

class _tarihState extends State<tarih> with SingleTickerProviderStateMixin {
  late TabController tab_c;

  List<dynamic> olay = [];
  List<dynamic> olum = [];
  List<dynamic> dogum = [];
  List<dynamic> basin = [];
  List<dynamic> data = [];
  bool loading = true;

  al() async {
    setState(() {
      loading = true;
    });
    var response = await Network("https://api.ubilisim.com/tarihtebugun").get();
    if (response != null) {
      for (var oge in response["tarihtebugun"]) {
        switch (oge["Durum"]) {
          case "Olay":
            olay.add(oge);
            break;
          case "Ölüm":
            olum.add(oge);
            break;
          case "Doğum":
            dogum.add(oge);
            break;
          case "Basın Yayın":
            basin.add(oge);
            break;
          default:
            data.add(oge);
            break;
        }
      }
    }
    setState(() {
      loading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    tab_c = TabController(length: 5, vsync: this);
    al();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text("Tarihte Bugün"),
          bottom: TabBar(
            isScrollable: true,
            controller: tab_c,
            tabs: const [
              Tab(text: "Basın Yayını"),
              Tab(text: "Olay"),
              Tab(text: "Doğum"),
              Tab(text: "Ölüm"),
              Tab(text: "Bilinmeyen"),
            ],
          )),
      body: loading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.deepPurple,
              ),
            )
          : RefreshIndicator(
              onRefresh: al(),
              child: TabBarView(controller: tab_c, children: [
                liste(basin),
                liste(olay),
                liste(dogum),
                liste(olum),
                liste(data),
              ]),
            ),
    );
  }

  Widget liste(List<dynamic> liste) {
    if (liste.isEmpty) {
      return const Center(child: Text("Hiç öğe yok."));
    } else {
      return ListView.builder(
          itemCount: liste.isNotEmpty ? liste.length : 1,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(liste[index]["Gun"] +
                  "." +
                  liste[index]["Ay"] +
                  "." +
                  liste[index]["Yil"]),
              subtitle: Text(liste[index]["Olay"]),
            );
          });
    }
  }
}
