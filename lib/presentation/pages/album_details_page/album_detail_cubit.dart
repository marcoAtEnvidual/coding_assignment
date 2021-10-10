import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:last_fm/data/data.dart';
import 'package:last_fm/data/exceptions/last_fm_exception.dart';
import 'package:last_fm/domain/models/album.dart';

part 'album_detail_cubit.freezed.dart';

class AlbumDetailCubit extends Cubit<AlbumDetailState> {
  final Data data;
  final Album album;

  AlbumDetailCubit({
    required this.album,
    required this.data,
  }) : super(const AlbumDetailState.loading()) {
    _loadAlbumDetails();
  }

  Future<void> _loadAlbumDetails() async {
    try {
      final albumDetails = await data.getAlbumDetails(album);
      emit(AlbumDetailState.data(details: albumDetails));
    } on LastFmException catch (e) {
      emit(AlbumDetailState.error(exception: e));
    }
  }
}

@freezed
class AlbumDetailState with _$AlbumDetailState {
  const factory AlbumDetailState.loading() = _Loading;
  const factory AlbumDetailState.data({required AlbumDetails details}) = _Data;
  const factory AlbumDetailState.error({required LastFmException exception}) =
      _Error;
}
