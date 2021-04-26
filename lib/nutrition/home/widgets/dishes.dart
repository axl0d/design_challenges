import 'package:flutter/material.dart';

class StaggeredGridView extends StatelessWidget {
  const StaggeredGridView({
    Key? key,
    required this.aspectRatio,
    required this.spacing,
    required this.itemBuilder,
    required this.itemCount,
  }) : super(key: key);

  final double aspectRatio;
  final double spacing;
  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: aspectRatio,
        crossAxisSpacing: spacing,
        mainAxisSpacing: spacing,
      ),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return Transform.translate(
          offset: Offset(0, index.isOdd ? 15 : 0),
          child: itemBuilder(context, index),
        );
      },
    );
  }
}
