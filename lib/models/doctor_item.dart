import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/models/doctor_status.dart';
import 'package:flutter_doctor_app/models/rating.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorItem extends StatelessWidget {
  final String profilePicture;
  final String doctorName;
  final String specialty;
  final String hospital;
  final int index;
  final int rating;
  final int patientCount;
  final bool isOpen;

  const DoctorItem({
    super.key,
    required this.profilePicture,
    required this.doctorName,
    required this.specialty,
    required this.hospital,
    required this.index,
    required this.rating,
    required this.patientCount,
    required this.isOpen,
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
                  profilePicture,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          specialty,
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        Rating(
                          index: index,
                          rating: rating,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text(
                            '(',
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.w500,
                              fontSize: 10.0,
                              color: const Color(0xffAAAAAA),
                            ),
                          ),
                        ),
                        Text(
                          patientCount.toString(),
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.w500,
                            fontSize: 10.0,
                            color: const Color(0xffAAAAAA),
                          ),
                        ),
                        Text(
                          ')',
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.w500,
                            fontSize: 10.0,
                            color: const Color(0xffAAAAAA),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 38.0),
                          child: DoctorStatus(status: isOpen),
                        ),
                      ],
                    ),
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
