import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_youtube/feat/youtube/domain/entity/video_entity.dart';
import 'package:go_router/go_router.dart';

class ShortsListWidget extends StatelessWidget {
  final List<VideoEntity> videos;

  const ShortsListWidget({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Row(
            children: [
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/f/fc/Youtube_shorts_icon.png', // Shorts logo icon if available, or text
                height: 24,
                errorBuilder: (c, e, s) =>
                    const Icon(Icons.flash_on, color: Color(0xFFF7A269)),
              ),
              const SizedBox(width: 8),
              const Text(
                'Shorts',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 260, // Adjust height for Shorts aspect ratio
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemCount: videos.length,
            separatorBuilder: (context, index) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final video = videos[index];
              return GestureDetector(
                onTap: () {
                  context.push('/shorts_detail', extra: video);
                },
                child: SizedBox(
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: CachedNetworkImage(
                            imageUrl: video.thumbnailUrl,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            placeholder: (context, url) =>
                                Container(color: Colors.grey[300]),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        video.title,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '1M views',
                        style: TextStyle(color: Colors.grey[600], fontSize: 12),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
