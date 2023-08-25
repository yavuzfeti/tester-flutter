/*import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:audioplayers/audioplayers.dart';

class music2 extends StatefulWidget {
  @override
  _music2State createState() => _music2State();
}

class _music2State extends State<music2> {

  final FlutterAudioQuery audioQuery = FlutterAudioQuery();
  AudioPlayer audioPlayer = AudioPlayer();
  List<Widget> musicList = [];

  @override
  void initState()
  {
    super.initState();
    getMusic();
  }

  void getMusic() async {
    List<SongInfo> songs = await audioQuery.getSongs();
    List<Widget> newMusicList = [];

    for (SongInfo song in songs) {
      newMusicList.add(
        ListTile(
          title: Text(song.title),
          subtitle: Text(song.artist),
          onTap: () {
            playMusic(song.filePath);
          },
        ),
      );
    }

    setState(() {
      musicList = newMusicList;
    });
  }

  void playMusic(String filePath) async {
    await audioPlayer.stop();
    await audioPlayer.play(filePath as Source);
  }

  @override
  void dispose() {
    audioPlayer.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MP3 Player"),
        ),
        body: ListView(
          children: musicList,
        ),
      ),
    );
  }
}*/

