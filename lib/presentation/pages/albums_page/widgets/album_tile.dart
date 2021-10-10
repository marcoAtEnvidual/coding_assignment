import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:last_fm/domain/models/album.dart';
import 'package:last_fm/presentation/widgets/fm_image.dart';

class AlbumTile extends StatelessWidget {
  final VoidCallback? onTap;
  final Album album;

  const AlbumTile({
    Key? key,
    required this.album,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        color: Colors.transparent,
        child: LayoutBuilder(
          builder: (context, constraints) => Row(
            children: [
              FmImage(
                album.imageUrl,
                width: 50,
                height: 50,
                errorImage: Container(
                  width: 50,
                  height: 50,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: constraints.maxWidth - 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      album.name,
                      style: Theme.of(context).textTheme.bodyText2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      album.artist,
                      style: Theme.of(context).textTheme.caption,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
