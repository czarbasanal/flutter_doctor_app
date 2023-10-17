import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/doctor_status.dart';
import 'package:flutter_doctor_app/rating.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorItem extends StatelessWidget {
  final String imgUrl;
  final String doctorName;
  final String category;
  final String hospital;
  final int index;
  final int rating;
  final String numReviews;
  final bool status;

  const DoctorItem({
    super.key,
    required this.imgUrl,
    required this.doctorName,
    required this.category,
    required this.hospital,
    required this.index,
    required this.rating,
    required this.numReviews,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          width: 327,
          height: 80,
        ),
        Row(
          children: [
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
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctorName,
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                      color: const Color(0xff404345),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        category,
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                          color: const Color(0xffAAAAAA),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Image.asset('images/Ellipse-3.png'),
                      ),
                      Text(
                        hospital,
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                          color: const Color(0xffAAAAAA),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Rating(
                        index: index,
                        rating: rating,
                      ),
                      Text(
                        numReviews,
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w500,
                          fontSize: 10.0,
                          color: const Color(0xffAAAAAA),
                        ),
                      ),
                      DoctorStatus(status: status),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
