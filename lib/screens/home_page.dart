import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/models/doctor_list.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_doctor_app/models/profile_icon.dart';
import 'package:flutter_doctor_app/models/search_bar.dart';
import 'package:flutter_doctor_app/models/grid_menu.dart';

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
                child: GridMenu(),
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
              Container(
                  height: 245,
                  padding: const EdgeInsets.only(top: 24.0),
                  child: const DoctorList()),
            ],
          ),
        ),
      ),
    );
  }
}
