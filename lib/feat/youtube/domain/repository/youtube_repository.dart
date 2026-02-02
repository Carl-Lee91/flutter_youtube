import 'package:flutter_youtube/feat/youtube/domain/entity/video_entity.dart';

abstract class YoutubeRepository {
  Future<List<VideoEntity>> getVideos();
}
