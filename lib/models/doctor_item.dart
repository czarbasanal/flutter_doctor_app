import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/models/doctor.dart';
import 'package:flutter_doctor_app/models/doctor_status.dart';
import 'package:flutter_doctor_app/models/rating.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorItem extends StatelessWidget {
  final Doctor doctor;

  const DoctorItem({
    super.key,
    required this.doctor,
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
                  doctor.profilePicture,
                  scale: 2.0,
                )),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctor.name,
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
                          doctor.specialty,
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
                          doctor.hospital,
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
                          starCount: doctor.shadedStars,
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
                          doctor.patientCount.toString(),
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
                        DoctorStatus(status: doctor.isOpen),
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
