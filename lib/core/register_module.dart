import 'package:flutter_youtube/feat/youtube/data/repository/mock_youtube_repository_impl.dart';
import 'package:flutter_youtube/feat/youtube/domain/repository/youtube_repository.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  YoutubeRepository get youtubeRepository => MockYoutubeRepositoryImpl();
}
