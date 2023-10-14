// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/models/doctor.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: use_key_in_widget_constructors
class DoctorDetails extends StatelessWidget {
  final Doctor doctor;

  DoctorDetails({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // Big image of the doctor
            Stack(
              children: [
                Image(
                  image: AssetImage(
                    doctor.imagePath,
                  ),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 375,
                ),
                Positioned(
                  left: 30,
                  top: 56,
                  child: Image(
                    image: AssetImage(
                      'images/Icons-Back-1.png',
                    ),
                    width: 24,
                    height: 24,
                  ),
                ),
                Positioned(
                  right: 30,
                  top: 56,
                  child: Image(
                    image: AssetImage(
                      'images/Icons-Artboard-31-1.png',
                    ),
                    width: 24,
                    height: 24,
                  ),
                )
              ],
            ),

            // Spacing
            SizedBox(height: 24),

            // Doctor's name
            Padding(
              padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
              child: Row(
                children: [
                  Text(
                    doctor.name,
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                      color: const Color(0xff25282B),
                    ),
                  ),
                ],
              ),
            ),

            //Doctor's Specialty & Location
            Padding(
              padding: EdgeInsets.fromLTRB(24, 8, 0, 0),
              child: Row(
                children: [
                  Text(
                    doctor.specialty,
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                      color: const Color(0xffAAAAAA),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(6, 0, 6, 0),
                    child: Image(
                      image: AssetImage(
                        'images/Ellipse-3.png',
                      ),
                      width: 4,
                      height: 4,
                    ),
                  ),
                  Text(
                    doctor.location,
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                      color: const Color(0xffAAAAAA),
                    ),
                  ),
                ],
              ),
            ),

            // Spacing
            SizedBox(height: 16),

            // Doctor's details
            Padding(
              padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Text(
                doctor.details,
                style: GoogleFonts.sourceSans3(
                  fontWeight: FontWeight.normal,
                  fontSize: 16.0,
                  color: const Color(0xffC4C4C4),
                ),
              ),
            ),

            //Spacing
            SizedBox(height: 16),

            //Doctor's Stats
            Padding(
              padding: EdgeInsets.fromLTRB(39, 0, 50, 20),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text('Experience',
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.normal,
                            fontSize: 16.0,
                            color: const Color(0xff25282B),
                          )),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(26, 0, 26, 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(doctor.experience.toString(),
                                style: GoogleFonts.lato(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 24.0,
                                  color: const Color(0xff2B92E4),
                                )),
                            SizedBox(width: 4),
                            Text('yr',
                                style: GoogleFonts.lato(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.0,
                                  color: const Color(0xffAAAAAA),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 14),
                  Image(
                    image: AssetImage(
                      'images/Vector-3.png',
                    ),
                  ),
                  SizedBox(width: 22),
                  Column(
                    children: [
                      Text('Patient',
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.normal,
                            fontSize: 16.0,
                            color: const Color(0xff25282B),
                          )),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(doctor.patientCount.toString(),
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.normal,
                                fontSize: 24.0,
                                color: const Color(0xff2B92E4),
                              )),
                          SizedBox(width: 4),
                          Text('ps',
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.normal,
                                fontSize: 14.0,
                                color: const Color(0xffAAAAAA),
                              )),
                        ],
                      )
                    ],
                  ),
                  SizedBox(width: 21),
                  Image(
                    image: AssetImage(
                      'images/Vector-3.png',
                    ),
                  ),
                  SizedBox(width: 31),
                  Column(
                    children: [
                      Text('Rating',
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.normal,
                            fontSize: 16.0,
                            color: const Color(0xff25282B),
                          )),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(9, 0, 8, 0),
                        child: Row(
                          children: [
                            Text(doctor.rating.toString(),
                                style: GoogleFonts.lato(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 24.0,
                                  color: const Color(0xff2B92E4),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),

            //BOTTOM BUTTONS
            Padding(
              padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Row(
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Color(0xFF4485FD),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image(
                      image: AssetImage(
                        'images/Icons-Comment.png',
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Container(
                    width: 255,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Color(0xFF00CC6A),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text('Make an Appointment',
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: const Color(0xffF9F9FA),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
