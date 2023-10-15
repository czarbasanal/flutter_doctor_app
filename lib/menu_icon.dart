import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuIcon extends StatelessWidget {
  final dynamic backgroundColor;
  final dynamic highlightColor;
  final dynamic icon;
  final String label;

  const MenuIcon({
    super.key,
    required this.backgroundColor,
    required this.highlightColor,
    required this.icon,
    required this.label,
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
                color: Color(backgroundColor),
                child: Image.asset(icon)),
            Positioned(
              top: -20,
              left: -20,
              child: Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  color: Color(highlightColor),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 7.0),
          child: Text(
            label,
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
