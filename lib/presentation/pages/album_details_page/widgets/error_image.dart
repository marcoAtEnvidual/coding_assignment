import 'package:flutter/material.dart';

class ErrorImage extends StatelessWidget {
  const ErrorImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => LayoutBuilder(
      builder: (context, constraints) => Container(
            width: constraints.maxWidth,
            height: constraints.maxWidth,
            color: Colors.grey,
            child: Center(
              child: Text(
                'Cover image does not exist',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
          ));
}
