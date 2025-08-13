import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:app_galp/widgets/appbar_cnz_widget.dart';
import 'package:app_galp/widgets/navbar_cnz_widget.dart';

class Norma1Page extends StatefulWidget {
  const Norma1Page({super.key});

  @override
  _Norma1PageState createState() => _Norma1PageState();
}

class _Norma1PageState extends State<Norma1Page> {
  final videoUrl = "https://youtu.be/1E6LFRNpfIA?si=EmYqc6zoW2_g_qJZ";
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(videoUrl)!;
    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: YoutubePlayerFlags(autoPlay: false, mute: false),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFb1b3b6),
      appBar: AppbarCNZWidget(),
      bottomNavigationBar: NavbarCNZWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Obtenha autorização antes de inibir ou desabilitar controles de segurança",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.green),
                      title: Text("Eu conheço e uso equipamentos críticos de segurança..."),
                    ),
                    ListTile(
                      leading: Icon(Icons.warning, color: Colors.orange),
                      title: Text("Desabilitar ou inibir equipamentos de segurança"),
                    ),
                    ListTile(
                      leading: Icon(Icons.warning, color: Colors.orange),
                      title: Text("Divergir de procedimentos"),
                    ),
                    ListTile(
                      leading: Icon(Icons.warning, color: Colors.orange),
                      title: Text("Ultrapassar uma barreira de segurança"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
            ),
          ],
        ),
      ),
    );
  }
}