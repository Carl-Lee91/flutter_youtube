import 'package:flutter_youtube/feat/youtube/domain/entity/video_entity.dart';
import 'package:flutter_youtube/feat/youtube/domain/repository/youtube_repository.dart';

class MockYoutubeRepositoryImpl implements YoutubeRepository {
  @override
  Future<List<VideoEntity>> getVideos() async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 800));

    return [
      // 1. Live Video
      const VideoEntity(
        id: 'jfKfPfyJRdk', // Lofi Girl Radio
        title: 'lofi hip hop radio - beats to relax/study to',
        thumbnailUrl:
            'https://img.youtube.com/vi/jfKfPfyJRdk/maxresdefault.jpg',
        type: VideoType.live,
      ),

      // 2. Normal Videos (5 items)
      // TODO: Replace with real Video IDs
      const VideoEntity(
        id: '5qap5aO4i9A', // lofi hip hop radio - beats to sleep/chill to
        title: 'lofi hip hop radio - beats to sleep/chill to',
        thumbnailUrl:
            'https://img.youtube.com/vi/5qap5aO4i9A/maxresdefault.jpg',
        type: VideoType.normal,
      ),
      const VideoEntity(
        id: 'DWcJFNfaw9c',
        title: 'lofi hip hop radio - beats to relax/study to',
        thumbnailUrl:
            'https://img.youtube.com/vi/DWcJFNfaw9c/maxresdefault.jpg',
        type: VideoType.normal,
      ),
      const VideoEntity(
        id: 'tNkZsRW7h2c',
        title: 'Space Ambient Music for Deep Sleep',
        thumbnailUrl:
            'https://img.youtube.com/vi/tNkZsRW7h2c/maxresdefault.jpg',
        type: VideoType.normal,
      ),
      const VideoEntity(
        id: 'hBGbt2CRDpA',
        title: 'Jazz Bar Music - Smooth Jazz & Bossa Nova',
        thumbnailUrl:
            'https://img.youtube.com/vi/hBGbt2CRDpA/maxresdefault.jpg',
        type: VideoType.normal,
      ),
      const VideoEntity(
        id: 'n61ULEU7CO0',
        title: 'Piano Music for Studying & Sleeping',
        thumbnailUrl:
            'https://img.youtube.com/vi/n61ULEU7CO0/maxresdefault.jpg',
        type: VideoType.normal,
      ),

      // 3. Shorts (10 items)
      // TODO: Replace with real Shorts IDs
      const VideoEntity(
        id: 'shorts_1',
        title: 'Funny Cat #1',
        thumbnailUrl:
            'https://i.ytimg.com/vi/S7Vt4nMceTk/oar2.jpg', // Placeholder
        type: VideoType.shorts,
      ),
      const VideoEntity(
        id: 'shorts_2',
        title: 'Cool Trick',
        thumbnailUrl: 'https://i.ytimg.com/vi/S7Vt4nMceTk/oar2.jpg',
        type: VideoType.shorts,
      ),
      const VideoEntity(
        id: 'shorts_3',
        title: 'Delicious Food',
        thumbnailUrl: 'https://i.ytimg.com/vi/S7Vt4nMceTk/oar2.jpg',
        type: VideoType.shorts,
      ),
      const VideoEntity(
        id: 'shorts_4',
        title: 'Travel Vlog Mini',
        thumbnailUrl: 'https://i.ytimg.com/vi/S7Vt4nMceTk/oar2.jpg',
        type: VideoType.shorts,
      ),
      const VideoEntity(
        id: 'shorts_5',
        title: 'Coding Tip',
        thumbnailUrl: 'https://i.ytimg.com/vi/S7Vt4nMceTk/oar2.jpg',
        type: VideoType.shorts,
      ),
      const VideoEntity(
        id: 'shorts_6',
        title: 'Life Hack',
        thumbnailUrl: 'https://i.ytimg.com/vi/S7Vt4nMceTk/oar2.jpg',
        type: VideoType.shorts,
      ),
      const VideoEntity(
        id: 'shorts_7',
        title: 'DIY Craft',
        thumbnailUrl: 'https://i.ytimg.com/vi/S7Vt4nMceTk/oar2.jpg',
        type: VideoType.shorts,
      ),
      const VideoEntity(
        id: 'shorts_8',
        title: 'Nature View',
        thumbnailUrl: 'https://i.ytimg.com/vi/S7Vt4nMceTk/oar2.jpg',
        type: VideoType.shorts,
      ),
      const VideoEntity(
        id: 'shorts_9',
        title: 'Gym Motivation',
        thumbnailUrl: 'https://i.ytimg.com/vi/S7Vt4nMceTk/oar2.jpg',
        type: VideoType.shorts,
      ),
      const VideoEntity(
        id: 'shorts_10',
        title: 'Daily Routine',
        thumbnailUrl: 'https://i.ytimg.com/vi/S7Vt4nMceTk/oar2.jpg',
        type: VideoType.shorts,
      ),
    ];
  }
}
