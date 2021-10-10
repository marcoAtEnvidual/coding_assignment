import 'package:last_fm/domain/models/track.dart';

extension TrackConverter on Track {
  static Track fromJson(Map<String, dynamic> json) => Track(
        name: json['name'] as String,
        artist: json['artist']['name'] as String,
        duration: json['duration'] as int,
      );
}
