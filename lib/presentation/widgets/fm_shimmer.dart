import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

// Keeps the colors fixed all over the app and makes it easier to deactivate
// shimmers for widget/golden testing!
class FmShimmer extends StatelessWidget {
  final Widget child;

  const FmShimmer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      child: child,
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
    );
  }
}
