// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'album.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AlbumTearOff {
  const _$AlbumTearOff();

  _Album call(
      {required String name,
      required String artist,
      required String imageUrl}) {
    return _Album(
      name: name,
      artist: artist,
      imageUrl: imageUrl,
    );
  }
}

/// @nodoc
const $Album = _$AlbumTearOff();

/// @nodoc
mixin _$Album {
  String get name => throw _privateConstructorUsedError;
  String get artist => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumCopyWith<Album> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumCopyWith<$Res> {
  factory $AlbumCopyWith(Album value, $Res Function(Album) then) =
      _$AlbumCopyWithImpl<$Res>;
  $Res call({String name, String artist, String imageUrl});
}

/// @nodoc
class _$AlbumCopyWithImpl<$Res> implements $AlbumCopyWith<$Res> {
  _$AlbumCopyWithImpl(this._value, this._then);

  final Album _value;
  // ignore: unused_field
  final $Res Function(Album) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? artist = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AlbumCopyWith<$Res> implements $AlbumCopyWith<$Res> {
  factory _$AlbumCopyWith(_Album value, $Res Function(_Album) then) =
      __$AlbumCopyWithImpl<$Res>;
  @override
  $Res call({String name, String artist, String imageUrl});
}

/// @nodoc
class __$AlbumCopyWithImpl<$Res> extends _$AlbumCopyWithImpl<$Res>
    implements _$AlbumCopyWith<$Res> {
  __$AlbumCopyWithImpl(_Album _value, $Res Function(_Album) _then)
      : super(_value, (v) => _then(v as _Album));

  @override
  _Album get _value => super._value as _Album;

  @override
  $Res call({
    Object? name = freezed,
    Object? artist = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_Album(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Album implements _Album {
  const _$_Album(
      {required this.name, required this.artist, required this.imageUrl});

  @override
  final String name;
  @override
  final String artist;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'Album(name: $name, artist: $artist, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Album &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, artist, imageUrl);

  @JsonKey(ignore: true)
  @override
  _$AlbumCopyWith<_Album> get copyWith =>
      __$AlbumCopyWithImpl<_Album>(this, _$identity);
}

abstract class _Album implements Album {
  const factory _Album(
      {required String name,
      required String artist,
      required String imageUrl}) = _$_Album;

  @override
  String get name;
  @override
  String get artist;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$AlbumCopyWith<_Album> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$AlbumDetailsTearOff {
  const _$AlbumDetailsTearOff();

  _AlbumDetails call(
      {required String name,
      required String artist,
      required String imageUrl,
      required List<String> tags,
      required List<Track> tracks}) {
    return _AlbumDetails(
      name: name,
      artist: artist,
      imageUrl: imageUrl,
      tags: tags,
      tracks: tracks,
    );
  }
}

/// @nodoc
const $AlbumDetails = _$AlbumDetailsTearOff();

/// @nodoc
mixin _$AlbumDetails {
  String get name => throw _privateConstructorUsedError;
  String get artist => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  List<Track> get tracks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumDetailsCopyWith<AlbumDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumDetailsCopyWith<$Res> {
  factory $AlbumDetailsCopyWith(
          AlbumDetails value, $Res Function(AlbumDetails) then) =
      _$AlbumDetailsCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String artist,
      String imageUrl,
      List<String> tags,
      List<Track> tracks});
}

/// @nodoc
class _$AlbumDetailsCopyWithImpl<$Res> implements $AlbumDetailsCopyWith<$Res> {
  _$AlbumDetailsCopyWithImpl(this._value, this._then);

  final AlbumDetails _value;
  // ignore: unused_field
  final $Res Function(AlbumDetails) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? artist = freezed,
    Object? imageUrl = freezed,
    Object? tags = freezed,
    Object? tracks = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tracks: tracks == freezed
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<Track>,
    ));
  }
}

/// @nodoc
abstract class _$AlbumDetailsCopyWith<$Res>
    implements $AlbumDetailsCopyWith<$Res> {
  factory _$AlbumDetailsCopyWith(
          _AlbumDetails value, $Res Function(_AlbumDetails) then) =
      __$AlbumDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String artist,
      String imageUrl,
      List<String> tags,
      List<Track> tracks});
}

/// @nodoc
class __$AlbumDetailsCopyWithImpl<$Res> extends _$AlbumDetailsCopyWithImpl<$Res>
    implements _$AlbumDetailsCopyWith<$Res> {
  __$AlbumDetailsCopyWithImpl(
      _AlbumDetails _value, $Res Function(_AlbumDetails) _then)
      : super(_value, (v) => _then(v as _AlbumDetails));

  @override
  _AlbumDetails get _value => super._value as _AlbumDetails;

  @override
  $Res call({
    Object? name = freezed,
    Object? artist = freezed,
    Object? imageUrl = freezed,
    Object? tags = freezed,
    Object? tracks = freezed,
  }) {
    return _then(_AlbumDetails(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tracks: tracks == freezed
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<Track>,
    ));
  }
}

/// @nodoc

class _$_AlbumDetails implements _AlbumDetails {
  const _$_AlbumDetails(
      {required this.name,
      required this.artist,
      required this.imageUrl,
      required this.tags,
      required this.tracks});

  @override
  final String name;
  @override
  final String artist;
  @override
  final String imageUrl;
  @override
  final List<String> tags;
  @override
  final List<Track> tracks;

  @override
  String toString() {
    return 'AlbumDetails(name: $name, artist: $artist, imageUrl: $imageUrl, tags: $tags, tracks: $tracks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AlbumDetails &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality().equals(other.tracks, tracks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      artist,
      imageUrl,
      const DeepCollectionEquality().hash(tags),
      const DeepCollectionEquality().hash(tracks));

  @JsonKey(ignore: true)
  @override
  _$AlbumDetailsCopyWith<_AlbumDetails> get copyWith =>
      __$AlbumDetailsCopyWithImpl<_AlbumDetails>(this, _$identity);
}

abstract class _AlbumDetails implements AlbumDetails {
  const factory _AlbumDetails(
      {required String name,
      required String artist,
      required String imageUrl,
      required List<String> tags,
      required List<Track> tracks}) = _$_AlbumDetails;

  @override
  String get name;
  @override
  String get artist;
  @override
  String get imageUrl;
  @override
  List<String> get tags;
  @override
  List<Track> get tracks;
  @override
  @JsonKey(ignore: true)
  _$AlbumDetailsCopyWith<_AlbumDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
