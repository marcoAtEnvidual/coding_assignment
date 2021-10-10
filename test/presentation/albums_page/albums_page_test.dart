import 'package:flutter_test/flutter_test.dart';
import 'package:last_fm/data/exceptions/last_fm_exception.dart';
import 'package:last_fm/domain/models/album.dart';
import 'package:last_fm/presentation/pages/albums_page/albums_cubit.dart';
import 'package:last_fm/presentation/pages/albums_page/albums_page.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nv_golden/nv_golden.dart';

class MockAlbumsCubit extends Mock implements AlbumsCubit {}

// This is by no means exhaustive testing but merely to show off my testing
// framework. To properly test all screens I would usually add a global freezed
// sealed union with a test case and then deactivate both shimmers as well as
// network image loading during tests.

// Furthermore did I skip the tests for the cubits because all they really do
// is make network calls. I would usually still write them because it is being
// more explicit!
Future<void> main() async {
  setUpAll(NvGolden.init);

  testWidgets('Golden Test: Albums Page', (tester) async {
    final nvGolden = NvGolden.devices(deviceSizes: [
      Device.iphone5s,
      Device.iphone12pro,
      Device.iphone12proMax,
    ])
      ..addScenario(
        name: 'Albums Page - Data',
        widget: AlbumsPage(
          cubit: MockAlbumsCubit(),
          state: const AlbumsState.data(
            albums: [
              Album(
                name: 'name',
                artist: 'artist',
                imageUrl: '',
              ),
              Album(
                name: 'name',
                artist: 'artist',
                imageUrl: '',
              ),
              Album(
                name: 'name',
                artist: 'artist',
                imageUrl: '',
              ),
            ],
          ),
        ),
      )
      ..addScenario(
        name: 'Albums Page - Data',
        widget: AlbumsPage(
          cubit: MockAlbumsCubit(),
          state: const AlbumsState.error(
            exception: LastFmException.noConnection(),
          ),
        ),
      );

    await tester.createGolden(nvGolden, 'albums_page');
  });
}
