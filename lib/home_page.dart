import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'profile_icon.dart';
import 'search_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 56.0, right: 24.0, left: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu_rounded,
                    size: 36.0,
                    color: Color(0xff25282B),
                  ),
                  ProfileIcon(imagePath: 'images/Bung-1.png'),
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
            ],
          ),
        ),
      ),
    );
  }
}
