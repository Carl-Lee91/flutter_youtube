import 'package:flutter/material.dart';
import 'package:flutter_youtube/feat/youtube/domain/entity/video_entity.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ShortsDetailScreen extends StatefulWidget {
  final VideoEntity video;

  const ShortsDetailScreen({super.key, required this.video});

  @override
  State<ShortsDetailScreen> createState() => _ShortsDetailScreenState();
}

class _ShortsDetailScreenState extends State<ShortsDetailScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    // Validating video ID for Shorts (sometimes ID format differs, but usually same 11 chars)
    // Note: youtube_player_flutter might struggle with vertical aspect ratio natively in iframe mode,
    // but we can force UI size.
    _controller = YoutubePlayerController(
      initialVideoId: widget.video.id,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        loop: true,
        hideControls: true, // Shorts usually hide default controls
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
    // Shorts are usually full screen 9:16
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: AspectRatio(
              aspectRatio: 9 / 16,
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: const Color(0xFFF7A269),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 16,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          Positioned(
            bottom: 40,
            left: 16,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.video.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, size: 16),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '@UserChannel',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
