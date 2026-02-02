enum VideoType { live, normal, shorts }

class VideoEntity {
  final String id;
  final String title;
  final String thumbnailUrl;
  final VideoType type;

  const VideoEntity({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.type,
  });
}
