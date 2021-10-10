import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:last_fm/domain/models/track.dart';

part 'album.freezed.dart';

@freezed
class Album with _$Album {
  const factory Album({
    required String name,
    required String artist,
    required String imageUrl,
  }) = _Album;
}

@freezed
class AlbumDetails with _$AlbumDetails {
  const factory AlbumDetails({
    required String name,
    required String artist,
    required String imageUrl,
    required List<String> tags,
    required List<Track> tracks,
  }) = _AlbumDetails;
}
