import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoResults extends StatelessWidget {
  const NoResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.content_paste),
        const SizedBox(height: 10),
        Text(
          'No results found!',
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
