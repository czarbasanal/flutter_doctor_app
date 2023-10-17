import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final int index;
  final int rating;

  const Rating({
    Key? key,
    required this.index,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> displayRating = List.generate(5, (index) {
      return Icon(
        Icons.star,
        color:
            index < rating ? const Color(0xffFFE848) : const Color(0xffEAEAEA),
        size: 20.0,
      );
    });

    return Row(children: displayRating);
  }
}
