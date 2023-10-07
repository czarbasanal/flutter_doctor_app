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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                Icons.menu, // You can change this to the icon of your choice
                size: 36.0,
                color: Colors.blue,
              ),
              ProfileIcon(),
            ],
          ),
        ],
      )),
    );
  }
}
