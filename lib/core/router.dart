import 'package:flutter_youtube/feat/youtube/domain/entity/video_entity.dart';
import 'package:flutter_youtube/feat/youtube/presentation/screen/live_detail_screen.dart';
import 'package:flutter_youtube/feat/youtube/presentation/screen/shorts_detail_screen.dart';
import 'package:flutter_youtube/feat/youtube/presentation/screen/video_detail_screen.dart';
import 'package:flutter_youtube/feat/youtube/presentation/screen/youtube_main_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const YoutubeMainScreen()),
    GoRoute(
      path: '/live_detail',
      builder: (context, state) {
        final video = state.extra as VideoEntity;
        return LiveDetailScreen(video: video);
      },
    ),
    GoRoute(
      path: '/video_detail',
      builder: (context, state) {
        final video = state.extra as VideoEntity;
        return VideoDetailScreen(video: video);
      },
    ),
    GoRoute(
      path: '/shorts_detail',
      builder: (context, state) {
        final video = state.extra as VideoEntity;
        return ShortsDetailScreen(video: video);
      },
    ),
  ],
);
