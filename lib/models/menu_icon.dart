import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/models/doctor.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuIcon extends StatelessWidget {
  final DoctorMenu menuIcon;

  const MenuIcon({
    super.key,
    required this.menuIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Stack(children: <Widget>[
            Container(
                width: 56,
                height: 56,
                color: Color(menuIcon.backgroundColor),
                child: Image.asset(menuIcon.icon)),
            Positioned(
              top: -20,
              left: -20,
              child: Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  color: Color(menuIcon.highlightColor),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: Text(
            menuIcon.label,
            style: GoogleFonts.lato(
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
              color: const Color(0xff25282B),
            ),
          ),
        )
      ],
    );
  }
}
