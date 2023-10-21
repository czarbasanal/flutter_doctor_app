import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/models/doctor.dart';
import 'package:flutter_doctor_app/models/menu_icon.dart';

class GridMenu extends StatelessWidget {
  const GridMenu({super.key});

  @override
  Widget build(BuildContext context) {
    if (doctorMenu.length != 8) {
      throw ArgumentError('GridIcon requires exactly 8 icons.');
    }

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1.0,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 5.0,
      ),
      itemCount: doctorMenu.length,
      itemBuilder: (context, index) {
        DoctorMenu doctorMenuIcon = doctorMenu[index];
        return MenuIcon(menuIcon: doctorMenuIcon);
      },
    );
  }
}
