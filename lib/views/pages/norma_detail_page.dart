import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:app_galp/widgets/appbar_cnz_widget.dart';
import 'package:app_galp/widgets/navbar_cnz_widget.dart';
import 'package:app_galp/widgets/hero_widget.dart';

class NormaDetailPage extends StatefulWidget {
  final String heroTag;
  final String imagePath;
  final String title;
  final String name;
  final String videoUrl;
  final List<RuleItem> rules;

  const NormaDetailPage({
    super.key,
    required this.heroTag,
    required this.imagePath,
    required this.title,
    required this.name,
    required this.videoUrl,
    required this.rules,
  });

  @override
  State<NormaDetailPage> createState() => _NormaDetailPageState();
}

class _NormaDetailPageState extends State<NormaDetailPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(widget.videoUrl)!;
    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(autoPlay: false, mute: false),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFb1b3b6),
      appBar: AppbarCNZWidget(),
      bottomNavigationBar: NavbarCNZWidget(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'CanaroBook',
              ),
            ),
            const SizedBox(height: 16),

            HeroWidget(
              heroTag: widget.heroTag,
              imagePath: widget.imagePath,
              height: 100,
              width: 100,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 16),

            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'CanaroBook',
              ),
            ),
            const SizedBox(height: 16),

            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: widget.rules
                      .map((rule) => ListTile(
                            title: Text(rule.text),
                          ))
                      .toList(),
                ),
              ),
            ),
            const SizedBox(height: 16),

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

class RuleItem {
  final String text;

  RuleItem({
    required this.text,
  });
}