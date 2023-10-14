// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class DoctorDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Big image of the doctor
              Stack(
                children: [
                  Image(
                    image: AssetImage(
                      'images/Group-22.png',
                    ),
                    width: 375,
                    height: 375,
                  ),
                  Image(
                    image: AssetImage(
                      'images/Icons-Back-1.png',
                    ),
                    width: 24,
                    height: 24,
                  ),
                ],
              ),

              // Spacing
              SizedBox(height: 16),

              // Doctor's name
              Text(
                'dr. Gilang Segara Bening',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Spacing
              SizedBox(height: 16),

              // Doctor's details
              Text(
                'dr. Gilang is one of the best doctors in the Persahabatan Hospital. He has saved more than 1000 patients in the past 3 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
