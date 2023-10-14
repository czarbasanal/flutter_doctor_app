import 'package:flutter/material.dart';
import 'profile_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          body: Column(
        children: <Widget>[
          Row(
            children: [
              Icon(
                Icons.menu_rounded,
                size: 36.0,
                color: Colors.black,
              ),
              ProfileIcon(),
            ],
          ),
        ],
      )),
    );
  }
}
