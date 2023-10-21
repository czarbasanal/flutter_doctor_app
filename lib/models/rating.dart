import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final int starCount;

  const Rating({
    Key? key,
    required this.starCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> ratingIcon = List.generate(5, (index) {
      return Icon(
        Icons.star,
        color: index < starCount
            ? const Color(0xffFFE848)
            : const Color(0xffEAEAEA),
        size: 20.0,
      );
    });

    return SizedBox(child: Row(children: ratingIcon));
  }
}
