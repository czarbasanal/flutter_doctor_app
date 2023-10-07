import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          CircleAvatar(
            radius: 36.0, // Adjust the size of the circle as needed
            backgroundColor: Color(0x0fffffff),
            backgroundImage: AssetImage(
                'images/Bung-1.png'), // Replace with your image asset
          ),
          Padding(
            padding: EdgeInsets.all(8.0), // Adjust the position of the icon
            child: Icon(
              Icons.camera_alt, // You can change this to a different icon
              size: 24.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
