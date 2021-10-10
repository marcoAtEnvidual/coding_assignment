import 'package:flutter/material.dart';
import 'package:last_fm/data/data.dart';
import 'package:last_fm/presentation/pages/album_details_page/album_detail_page.dart';
import 'package:last_fm/presentation/pages/albums_page/widgets/album_tile.dart';
import 'package:last_fm/presentation/pages/albums_page/widgets/no_results.dart';
import 'package:last_fm/presentation/pages/albums_page/widgets/search_bar.dart';
import 'package:last_fm/presentation/widgets/bloc_provider_builder.dart';
import 'package:last_fm/presentation/widgets/fm_shimmer.dart';
import 'package:provider/provider.dart';

import 'albums_cubit.dart';

class AlbumsPage extends StatelessWidget {
  final AlbumsCubit cubit;
  final AlbumsState state;

  const AlbumsPage({
    Key? key,
    required this.cubit,
    required this.state,
  }) : super(key: key);

  static Widget route() => BlocProviderBuilder<AlbumsCubit, AlbumsState>(
        create: (context) => AlbumsCubit(data: context.read<Data>()),
        builder: (context, cubit, state) => AlbumsPage(
          cubit: cubit,
          state: state,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LastFm')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: SearchBar(onSubmit: cubit.loadAlbums),
          ),
          state.when(
            loading: () => Expanded(
              child: FmShimmer(
                child: ListView(
                  children: List.filled(10, 0)
                      .map(
                        (_) => Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            data: (albums) => albums.isEmpty
                ? const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: NoResults(),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: albums.length,
                      itemBuilder: (context, i) {
                        final album = albums[i];
                        return AlbumTile(
                          album: album,
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => AlbumDetailPage.route(album),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
            error: (exception) => exception.when(
              serverError: () => const Text('Server Error'),
              noConnection: () => const Text('No Connection'),
              noData: () => const Text('No Data available'),
            ),
          ),
        ],
      ),
    );
  }
}
