import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  final String imagePath;

  const ProfileIcon({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: const Alignment(1.0, 1.0),
        children: <Widget>[
          CircleAvatar(
            radius: 32.0,
            backgroundColor: const Color(0xff25282B),
            backgroundImage: AssetImage(imagePath),
          ),
          Container(
            width: 24,
            height: 24,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Icon(
              Icons.add_a_photo_rounded,
              size: 16.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
