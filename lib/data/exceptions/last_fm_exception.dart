import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_fm_exception.freezed.dart';

@freezed
class LastFmException with _$LastFmException {
  @Implements<Exception>()
  const factory LastFmException.serverError() = _ServerError;
  @Implements<Exception>()
  const factory LastFmException.noConnection() = _NoConnection;
  @Implements<Exception>()
  const factory LastFmException.noData() = _NoData;
}
