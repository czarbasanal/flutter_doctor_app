import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorStatus extends StatelessWidget {
  final bool status;

  const DoctorStatus({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    String statusText = '';
    Color background = Colors.black;
    Color textColor = Colors.white;

    if (status == true) {
      statusText = 'Open';
      background = const Color(0xffCCF5E1);
      textColor = const Color(0xff00CC6A);
    } else {
      statusText = 'Close';
      background = const Color(0xffF7E4D9);
      textColor = const Color(0xffCC4900);
    }

    return Container(
      width: 56.0,
      height: 24.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0), color: background),
      child: Center(
        child: Text(
          statusText,
          style: GoogleFonts.lato(
            fontWeight: FontWeight.w500,
            fontSize: 12.0,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
