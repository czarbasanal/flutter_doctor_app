import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorItem extends StatelessWidget {
  final String imgUrl;

  const DoctorItem({
    super.key,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          width: 327,
          height: 80,
        ),
        Container(
            width: 88,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: const Color(0xffEAEAEA),
            ),
            child: Image.asset(
              imgUrl,
              scale: 2.0,
            )),
      ],
    );
  }
}
