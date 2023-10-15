import 'package:flutter/material.dart';

class GridMenu extends StatelessWidget {
  final List<Widget> icons;

  const GridMenu({super.key, required this.icons});

  @override
  Widget build(BuildContext context) {
    if (icons.length != 8) {
      throw ArgumentError('GridIcon requires exactly 8 icons.');
    }

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1.0,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 5.0,
      ),
      itemCount: icons.length,
      itemBuilder: (context, index) {
        return icons[index];
      },
    );
  }
}
