import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: const Alignment(1.0, 1.0),
        children: <Widget>[
          const CircleAvatar(
            radius: 36.0,
            backgroundColor: Color(0x0fffffff),
            backgroundImage: AssetImage('images/Bung-1.png'),
          ),
          Container(
            width: 24,
            height: 24,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white, // Set the background color to white
            ),
            child: const Icon(
              Icons.add_a_photo_rounded,
              size: 18.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
