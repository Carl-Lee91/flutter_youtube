part of 'youtube_cubit.dart';

@freezed
abstract class YoutubeState with _$YoutubeState {
  const factory YoutubeState({
    @Default([]) List<VideoEntity> liveVideos,
    @Default([]) List<VideoEntity> normalVideos,
    @Default([]) List<VideoEntity> shortsVideos,
    @Default(false) bool isLoading,
    @Default(null) String? error,
  }) = _YoutubeState;
}
