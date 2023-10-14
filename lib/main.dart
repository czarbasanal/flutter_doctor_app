import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/screens/doctor_details.dart';
import 'screens/home_page.dart';
import 'models/doctor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DoctorDetails(
        doctor: Doctor(
          name: 'dr. Gilang Segara Bening',
          specialty: 'Heart',
          location: 'Persahabatan Hospital',
          details:
              'dr. Gilang is one of the best doctors in the Persahabatan Hospital. He has saved more than 1000 patients in the past 3 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule. ',
          imagePath: 'images/Group-22.png',
          experience: 3,
          patientCount: 1221,
          rating: 5.0,
        ),
      ),
    );
  }
}
