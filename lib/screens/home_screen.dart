import 'package:flutter/material.dart';
import 'package:portfolio/widgets/home_widget.dart';
import 'package:portfolio/widgets/profile_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          HomeWidget(),
          ProfileWidget()
        ],
    );
  }
}
