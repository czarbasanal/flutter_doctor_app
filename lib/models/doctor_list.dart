import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/models/doctor.dart';
import 'package:flutter_doctor_app/models/doctor_item.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: topDoctors.length,
      itemBuilder: (context, index) {
        Doctor doctor = topDoctors[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: DoctorItem(doctor: doctor),
        );
      },
    );
  }
}
