import 'package:flutter/material.dart';

class FmImage extends StatelessWidget {
  final String url;
  final double width;
  final double height;
  final Widget errorImage;

  const FmImage(
    this.url, {
    Key? key,
    required this.width,
    required this.height,
    required this.errorImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return url.isNotEmpty
        ? Image.network(
            url,
            width: width,
            height: height,
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) => errorImage,
          )
        : errorImage;
  }
}
