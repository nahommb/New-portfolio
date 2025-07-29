import 'package:flutter/material.dart';
import 'package:portfolio/widgets/home_widget.dart';
import 'package:portfolio/widgets/profile_widget.dart';
import 'package:portfolio/widgets/project_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: [
            HomeWidget(),
            ProfileWidget(),
            ProjectWidget(),
          ],
      ),
    );
  }
}
