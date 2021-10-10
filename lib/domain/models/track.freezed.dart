// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'track.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TrackTearOff {
  const _$TrackTearOff();

  _Track call(
      {required String name, required int duration, required String artist}) {
    return _Track(
      name: name,
      duration: duration,
      artist: artist,
    );
  }
}

/// @nodoc
const $Track = _$TrackTearOff();

/// @nodoc
mixin _$Track {
  String get name => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  String get artist => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackCopyWith<Track> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackCopyWith<$Res> {
  factory $TrackCopyWith(Track value, $Res Function(Track) then) =
      _$TrackCopyWithImpl<$Res>;
  $Res call({String name, int duration, String artist});
}

/// @nodoc
class _$TrackCopyWithImpl<$Res> implements $TrackCopyWith<$Res> {
  _$TrackCopyWithImpl(this._value, this._then);

  final Track _value;
  // ignore: unused_field
  final $Res Function(Track) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? duration = freezed,
    Object? artist = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TrackCopyWith<$Res> implements $TrackCopyWith<$Res> {
  factory _$TrackCopyWith(_Track value, $Res Function(_Track) then) =
      __$TrackCopyWithImpl<$Res>;
  @override
  $Res call({String name, int duration, String artist});
}

/// @nodoc
class __$TrackCopyWithImpl<$Res> extends _$TrackCopyWithImpl<$Res>
    implements _$TrackCopyWith<$Res> {
  __$TrackCopyWithImpl(_Track _value, $Res Function(_Track) _then)
      : super(_value, (v) => _then(v as _Track));

  @override
  _Track get _value => super._value as _Track;

  @override
  $Res call({
    Object? name = freezed,
    Object? duration = freezed,
    Object? artist = freezed,
  }) {
    return _then(_Track(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Track implements _Track {
  const _$_Track(
      {required this.name, required this.duration, required this.artist});

  @override
  final String name;
  @override
  final int duration;
  @override
  final String artist;

  @override
  String toString() {
    return 'Track(name: $name, duration: $duration, artist: $artist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Track &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.artist, artist) || other.artist == artist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, duration, artist);

  @JsonKey(ignore: true)
  @override
  _$TrackCopyWith<_Track> get copyWith =>
      __$TrackCopyWithImpl<_Track>(this, _$identity);
}

abstract class _Track implements Track {
  const factory _Track(
      {required String name,
      required int duration,
      required String artist}) = _$_Track;

  @override
  String get name;
  @override
  int get duration;
  @override
  String get artist;
  @override
  @JsonKey(ignore: true)
  _$TrackCopyWith<_Track> get copyWith => throw _privateConstructorUsedError;
}
