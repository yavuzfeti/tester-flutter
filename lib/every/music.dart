/*import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class music extends StatefulWidget {
  const music({Key? key}) : super(key: key);

  @override
  State<music> createState() => _musicState();
}

class _musicState extends State<music>
{

  List<File> sarkilar_data = [];
  int index = 0;
  bool durum = false;
  final player = AudioPlayer();

  music_files_al() async {

    if (await Permission.storage.request().isGranted)
    {
      Directory? musicDir = await getExternalStorageDirectory();
      musicDir?.list(recursive: true, followLinks: false).listen((FileSystemEntity entity)
      {
        String path = entity.path;
        if (path.endsWith('.mp3'))
        {
          sarkilar_data.add(File(path));
        }
      });
      return sarkilar_data;
    }
    else
    {
      await showDialog(
          context: context,
          builder: (BuildContext context)
          {
            return AlertDialog(
              title: Text("İzin reddedildi"),
              content: const Text("Şarkılarınızı oynatabilmeniz için izin vermeniz gerekli."),
            shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
              actions: [
                TextButton(
                    onPressed: () {Navigator.of(context).pop();},
                    child: Text("Uygulamadan çık")
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(style: TextStyle(color: Colors.deepPurple),"Tekrar dene")
                ),
              ],
            );
          }
      );
    }
  }

  oynat()
  {
    player.play(AssetSource(sarkilar_data[index].path));
    setState(() {
      durum = true;
    });
  }

  duraklat()
  {
    player.pause();
    setState(() {
      durum = false;
    });
  }

  durdur()
  {
    player.stop();
    player.dispose();
    setState(() {
      durum = false;
    });
  }

  ileri()
  {
    //durdur();
    if(index < sarkilar_data.length-1)
    {
      index ++;
    }
    else
    {
      index = 0;
    }
    oynat();
  }

  geri()
  {
    //durdur();
    if(index > 0)
    {
      index--;
    }
    else
    {
      index = sarkilar_data.length-1;
    }
    oynat();
  }

  @override
  void initState() {
    super.initState();
    sarkilar_data = [];
    music_files_al();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text("MÜZİK PLAYER"),
      ),
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 50,
                  itemBuilder: (context, index)
                  {
                    return ListTile(
                      leading: Icon(Icons.abc,color: Colors.white,),
                      title: Text(style: TextStyle(color: Colors.white),"Şarkı"),
                    );
                  }
              ),
            ),
            Text("Şuanda çalan şarkı sırası: $index"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("<"),
                  onPressed: geri,
                ),
                ElevatedButton(
                  child: !durum ? Text("Oynat") : Text("Duraklat"),
                  onPressed: !durum ? oynat : duraklat,
                ),
                ElevatedButton(
                  child: Text(">"),
                  onPressed: ileri,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}*/
