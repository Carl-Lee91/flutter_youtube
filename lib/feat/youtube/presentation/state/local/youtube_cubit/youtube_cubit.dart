import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_youtube/feat/youtube/domain/entity/video_entity.dart';
import 'package:flutter_youtube/feat/youtube/domain/repository/youtube_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'youtube_cubit.freezed.dart';
part 'youtube_state.dart';

@injectable
class YoutubeCubit extends Cubit<YoutubeState> {
  final YoutubeRepository _repository;

  YoutubeCubit(this._repository) : super(const YoutubeState());

  Future<void> fetchVideos() async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      final videos = await _repository.getVideos();

      final live = videos.where((v) => v.type == VideoType.live).toList();
      final normal = videos.where((v) => v.type == VideoType.normal).toList();
      final shorts = videos.where((v) => v.type == VideoType.shorts).toList();

      emit(
        state.copyWith(
          isLoading: false,
          liveVideos: live,
          normalVideos: normal,
          shortsVideos: shorts,
        ),
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }
}
