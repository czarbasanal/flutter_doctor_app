import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: <Widget>[
          Icon(
            Icons.menu, // You can change this to the icon of your choice
            size: 24.0,
            color: Colors.blue,
          ),
        ],
      )),
    );
  }
}
