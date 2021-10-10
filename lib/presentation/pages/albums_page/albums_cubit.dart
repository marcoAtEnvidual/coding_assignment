import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:last_fm/data/data.dart';
import 'package:last_fm/data/exceptions/last_fm_exception.dart';
import 'package:last_fm/domain/models/album.dart';

part 'albums_cubit.freezed.dart';

class AlbumsCubit extends Cubit<AlbumsState> {
  final Data data;

  AlbumsCubit({required this.data}) : super(const AlbumsState.data(albums: []));

  Future<void> loadAlbums(String search) async {
    emit(const AlbumsState.loading());
    try {
      final albums = await data.getAlbumsBySearch(search);
      emit(AlbumsState.data(albums: albums));
    } on LastFmException catch (e) {
      emit(AlbumsState.error(exception: e));
    }
  }
}

@freezed
class AlbumsState with _$AlbumsState {
  const factory AlbumsState.loading() = _Loading;
  const factory AlbumsState.data({required List<Album> albums}) = _Data;
  const factory AlbumsState.error({required LastFmException exception}) =
      _Error;
}
