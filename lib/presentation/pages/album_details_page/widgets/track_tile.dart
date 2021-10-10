import 'package:flutter/material.dart';
import 'package:last_fm/domain/models/track.dart';

class TrackTile extends StatelessWidget {
  final int index;
  final Track track;

  const TrackTile({Key? key, required this.track, required this.index})
      : super(key: key);

  static Widget loading() => Builder(
        builder: (context) => Container(
          height: 40,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey,
          margin: const EdgeInsets.symmetric(vertical: 5),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      color: Colors.grey.withOpacity(0.1),
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '#$index: ${track.name}',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(track.artist, style: Theme.of(context).textTheme.caption),
              Text(
                track.duration.formattedDuration(),
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

extension on int {
  String formattedDuration() {
    final minutes = (this / 60).round();
    final seconds = this ~/ 60;
    return minutes > 0
        ? '$minutes minutes $seconds seconds'
        : '$seconds seconds';
  }
}
