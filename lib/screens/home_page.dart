import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_doctor_app/models/profile_icon.dart';
import 'package:flutter_doctor_app/models/search_bar.dart';
import 'package:flutter_doctor_app/models/menu_icon.dart';
import 'package:flutter_doctor_app/models/grid_menu.dart';
import 'package:flutter_doctor_app/models/doctor_item.dart';
import 'package:flutter_doctor_app/models/doctor.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 56.0, right: 24.0, left: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/Icons-Menu-Burger.png',
                    scale: 2.0,
                  ),
                  const ProfileIcon(imagePath: 'images/Bung-1.png'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 24.0),
                child: Row(
                  children: [
                    Text(
                      'Find',
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w500,
                        fontSize: 34.0,
                        color: const Color(0xff25282B),
                      ),
                    ),
                    Text(
                      ' your doctor',
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w500,
                        fontSize: 34.0,
                        color: const Color(0xffA0A4A8),
                      ),
                    ),
                  ],
                ),
              ),
              SearchBarWidget(onTextChanged: (value) => ''),
              const Padding(
                padding: EdgeInsets.only(top: 24.0, bottom: 24.0),
                child: GridMenu(icons: [
                  MenuIcon(
                    backgroundColor: 0xff4485FD,
                    highlightColor: 0xff639AFF,
                    icon: 'images/007-stethoscope.png',
                    label: 'Consultation',
                  ),
                  MenuIcon(
                    backgroundColor: 0xffA584FF,
                    highlightColor: 0xffB79CFF,
                    icon: 'images/004-teeth.png',
                    label: 'Dental',
                  ),
                  MenuIcon(
                    backgroundColor: 0xffFF7854,
                    highlightColor: 0xffFFA188,
                    icon: 'images/017-heart.png',
                    label: 'Heart',
                  ),
                  MenuIcon(
                    backgroundColor: 0xffFEA725,
                    highlightColor: 0xffFFB547,
                    icon: 'images/024-clinic.png',
                    label: 'Hospitals',
                  ),
                  MenuIcon(
                    backgroundColor: 0xff00CC6A,
                    highlightColor: 0xff1AD37A,
                    icon: 'images/012-medicine.png',
                    label: 'Medicines',
                  ),
                  MenuIcon(
                    backgroundColor: 0xff00C9E4,
                    highlightColor: 0xff05D1ED,
                    icon: 'images/013-care-2.png',
                    label: 'Physician',
                  ),
                  MenuIcon(
                    backgroundColor: 0xffFD44B3,
                    highlightColor: 0xffFF71C6,
                    icon: 'images/028-bandage.png',
                    label: 'Skin',
                  ),
                  MenuIcon(
                    backgroundColor: 0xffFD4444,
                    highlightColor: 0xffFF7070,
                    icon: 'images/005-syringe.png',
                    label: 'Surgeon',
                  ),
                ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Doctors',
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                      color: const Color(0xff25282B),
                    ),
                  ),
                  Text(
                    'View all',
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.w600,
                      fontSize: 11.0,
                      color: const Color(0xff4485FD),
                    ),
                  ),
                ],
              ),
              DoctorItem(
                profilePicture: topDoctors[0].profilePicture,
                doctorName: topDoctors[0].name,
                specialty: topDoctors[0].specialty,
                hospital: topDoctors[0].hospital,
                index: 3,
                rating: 4,
                patientCount: topDoctors[0].patientCount,
                isOpen: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
