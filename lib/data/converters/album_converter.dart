import 'package:last_fm/data/converters/track_converter.dart';
import 'package:last_fm/domain/models/album.dart';
import 'package:last_fm/domain/models/track.dart';

extension AlbumConverter on Album {
  static Album fromJson(Map<String, dynamic> json) => Album(
        name: json['name'] as String,
        artist: json['artist'] as String,
        imageUrl: json['image'].first['#text'] as String,
      );
}

extension AlbumDetailsConverter on AlbumDetails {
  static AlbumDetails fromJson(Map<String, dynamic> json) => AlbumDetails(
        name: json['name'] as String,
        artist: json['artist'] as String,
        imageUrl: json['image']
            .firstWhere((image) => image['size'] == 'large')['#text'],
        tags: json['tags'].isNotEmpty
            ? (json['tags']['tag'] as List)
                .cast<Map<String, dynamic>>()
                .map<String>((entry) => entry['name'])
                .toList()
            : [],
        tracks: (json['tracks']['track'] as List)
            .cast<Map<String, dynamic>>()
            .map<Track>(TrackConverter.fromJson)
            .toList(),
      );
}
