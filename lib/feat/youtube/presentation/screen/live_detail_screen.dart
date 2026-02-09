import 'package:flutter/material.dart';
import 'package:flutter_youtube/feat/youtube/domain/entity/video_entity.dart';
import 'package:url_launcher/url_launcher.dart';
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

  void _showErrorDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("재생 제한 알림"),
        content: Text("이 영상은 소유자의 요청으로 앱 내 재생이 제한되었습니다. 유튜브 앱에서 시청하시겠습니까?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("취소"),
          ),
          TextButton(
            onPressed: () async {
              final url = 'https://www.youtube.com/watch?v=${widget.video.id}';
              if (await canLaunchUrl(Uri.parse(url))) {
                await launchUrl(Uri.parse(url));
              }
            },
            child: Text("확인"),
          ),
        ],
      ),
    );
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
          onReady: () {
            _controller.addListener(() {
              final errorCode = _controller.value.errorCode;
              if (errorCode == 150 || errorCode == 101) {
                _showErrorDialog();
              }
            });
          },
        ),
      ),
    );
  }
}
