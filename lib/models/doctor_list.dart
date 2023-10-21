import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/models/doctor.dart';
import 'package:flutter_doctor_app/models/doctor_item.dart';
import 'package:flutter_doctor_app/screens/doctor_details.dart';

class SlidePageRoute<T> extends MaterialPageRoute<T> {
  SlidePageRoute({required WidgetBuilder builder, RouteSettings? settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    Animation<Offset> slideAnimation = Tween<Offset>(
      begin: const Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: animation,
        curve: Curves.easeInOut,
      ),
    );

    return SlideTransition(
      position: slideAnimation,
      child: child,
    );
  }
}

class DoctorList extends StatelessWidget {
  const DoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: topDoctors.length,
      itemBuilder: (context, index) {
        Doctor doctor = topDoctors[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(SlidePageRoute(
              builder: (context) => DoctorDetails(
                doctor: doctor,
              ),
            ));
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: DoctorItem(doctor: doctor),
          ),
        );
      },
    );
  }
}
