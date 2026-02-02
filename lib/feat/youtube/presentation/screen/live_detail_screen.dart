import 'package:flutter/material.dart';
import 'package:flutter_youtube/feat/youtube/domain/entity/video_entity.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class LiveDetailScreen extends StatefulWidget {
  final VideoEntity video;

  const LiveDetailScreen({super.key, required this.video});

  @override
  State<LiveDetailScreen> createState() => _LiveDetailScreenState();
}

class _LiveDetailScreenState extends State<LiveDetailScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.video.id,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        isLive: true,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Live Stream'),
        leading: const BackButton(color: Colors.white),
      ),
      body: Center(
        child: YoutubePlayer(
          controller: _controller,
          liveUIColor: const Color(0xFFF7A269),
          showVideoProgressIndicator: true,
        ),
      ),
    );
  }
}
