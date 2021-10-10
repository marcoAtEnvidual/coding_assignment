import 'package:flutter/material.dart';
import 'package:last_fm/data/data.dart';
import 'package:last_fm/domain/models/album.dart';
import 'package:last_fm/presentation/pages/album_details_page/widgets/error_image.dart';
import 'package:last_fm/presentation/pages/album_details_page/widgets/track_tile.dart';
import 'package:last_fm/presentation/widgets/bloc_provider_builder.dart';
import 'package:last_fm/presentation/widgets/fm_image.dart';
import 'package:last_fm/presentation/widgets/fm_shimmer.dart';
import 'package:nv_tooling/nv_tooling.dart';
import 'package:provider/provider.dart';

import 'album_detail_cubit.dart';

class AlbumDetailPage extends StatelessWidget {
  final Album album;
  final AlbumDetailCubit cubit;
  final AlbumDetailState state;

  const AlbumDetailPage({
    Key? key,
    required this.cubit,
    required this.state,
    required this.album,
  }) : super(key: key);

  static Widget route(Album album) =>
      BlocProviderBuilder<AlbumDetailCubit, AlbumDetailState>(
        create: (context) => AlbumDetailCubit(
          data: context.read<Data>(),
          album: album,
        ),
        builder: (context, cubit, state) => AlbumDetailPage(
          album: album,
          cubit: cubit,
          state: state,
        ),
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(album.name),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: Navigator.of(context).pop,
          ),
        ),
        body: state.when(
          loading: () => FmShimmer(
            child: LayoutBuilder(
              builder: (context, constraints) => ListView(
                children: [
                  Container(
                    color: Colors.grey,
                    width: constraints.maxWidth,
                    height: constraints.maxWidth,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Container(width: 100, height: 20, color: Colors.grey),
                        const SizedBox(height: 5),
                        Container(width: 70, height: 10, color: Colors.grey),
                        const SizedBox(height: 5),
                        Container(width: 70, height: 10, color: Colors.grey),
                        const SizedBox(height: 10),
                        ...List.filled(5, 0)
                            .map((_) => TrackTile.loading())
                            .toList(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          data: (details) => LayoutBuilder(
            builder: (context, constraints) => ListView(
              children: [
                FmImage(
                  details.imageUrl,
                  width: constraints.maxWidth,
                  height: constraints.maxWidth,
                  errorImage: const ErrorImage(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        details.name,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        details.artist,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        details.tags.map((tag) => '#$tag').join(', '),
                        style: Theme.of(context).textTheme.caption,
                      ),
                      const SizedBox(height: 10),
                      ...details.tracks
                          .mapIndexed(
                            (i, track) => TrackTile(
                              track: track,
                              index: i + 1,
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          error: (exception) => exception.when(
            serverError: () => const Text('Server Error'),
            noConnection: () => const Text('No Connection'),
            noData: () => const Text('No Data available'),
          ),
        ),
      );
}
