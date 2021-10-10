import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:last_fm/data/converters/album_converter.dart';
import 'package:last_fm/domain/models/album.dart';

import 'exceptions/last_fm_exception.dart';

class Data {
  final String baseUrl;
  final String apiKey;

  Data({
    this.baseUrl = 'http://ws.audioscrobbler.com/2.0/',
    this.apiKey = 'f2e7b43d08fee91571c5ef056cc0e8fd',
  });

  /// Throws [LastFmException]
  Future<List<Album>> getAlbumsBySearch(String search) async {
    final url = Uri.parse(
      '$baseUrl?method=album.search&album=$search'
      '&api_key=$apiKey&format=json',
    );

    try {
      final response = await http.get(url);
      final json = jsonDecode(response.body);

      final albums = (json['results']['albummatches']['album'] as List)
          .cast<Map<String, dynamic>>();

      return albums.map(AlbumConverter.fromJson).toList();
    } catch (e) {
      return throw const LastFmException.noConnection();
    }
  }

  /// Throws [LastFmException]
  Future<AlbumDetails> getAlbumDetails(Album album) async {
    final url = Uri.parse(
      '$baseUrl?method=album.getinfo&api_key=$apiKey'
      '&artist=${album.artist}&album=${album.name}&format=json',
    );

    try {
      final response = await http.get(url);
      final json = jsonDecode(response.body);

      final album = json['album'];
      return AlbumDetailsConverter.fromJson(album);
      // I would also handle all error cases that I want to notify the user about
      // to the sealed union and handle some sort of logging for those that are
      // only relevant for the developers.
    } on NoSuchMethodError catch (_) {
      throw const LastFmException.noData();
    } catch (e) {
      throw const LastFmException.noConnection();
    }
  }
}
