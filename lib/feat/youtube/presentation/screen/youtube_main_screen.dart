import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_youtube/feat/youtube/presentation/state/local/youtube_cubit/youtube_cubit.dart';
import 'package:flutter_youtube/feat/youtube/presentation/widget/live_header_widget.dart';
import 'package:flutter_youtube/feat/youtube/presentation/widget/shorts_list_widget.dart';
import 'package:flutter_youtube/feat/youtube/presentation/widget/video_list_widget.dart';
import 'package:get_it/get_it.dart';

class YoutubeMainScreen extends StatelessWidget {
  const YoutubeMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I<YoutubeCubit>()..fetchVideos(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'YouTube',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: BlocBuilder<YoutubeCubit, YoutubeState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(color: Color(0xFFF7A269)),
              );
            }
            if (state.error != null) {
              return Center(child: Text('Error: ${state.error}'));
            }

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 1. Live Header
                  if (state.liveVideos.isNotEmpty)
                    LiveHeaderWidget(video: state.liveVideos.first),

                  const SizedBox(height: 24),

                  // 2. Normal Video List (5 items)
                  if (state.normalVideos.isNotEmpty)
                    VideoListWidget(
                      videos: state.normalVideos.take(5).toList(),
                    ),

                  const SizedBox(height: 24),

                  // 3. Shorts List (10 items)
                  if (state.shortsVideos.isNotEmpty)
                    ShortsListWidget(
                      videos: state.shortsVideos.take(10).toList(),
                    ),

                  const SizedBox(height: 48),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
