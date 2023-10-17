import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/screens/doctor_details.dart';
import 'models/doctor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Find Your Doctor App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DoctorDetails(doctor: topDoctors[3]),
    );
  }
}
