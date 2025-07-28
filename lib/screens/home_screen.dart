import 'package:flutter/material.dart';
import 'package:portfolio/widgets/home_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        children: [
          HomeWidget()
        ],
      ),
    );
  }
}
