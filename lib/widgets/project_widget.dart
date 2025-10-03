import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/data/project_data.dart';
import 'package:portfolio/screens/detail_screen.dart';
import 'package:portfolio/screens/ui_ux_screen.dart';

class ProjectWidget extends StatefulWidget {
  @override
  _ProjectWidgetState createState() => _ProjectWidgetState();
}

class _ProjectWidgetState extends State<ProjectWidget> {
  bool isHoverWebsite = false;
  bool isHoverMobile = false;
  bool isHoverUiUx = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'What he has done',
          style: GoogleFonts.bokor(fontSize: 25),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Website
              MouseRegion(
                onEnter: (_) => setState(() => isHoverWebsite = true),
                onExit: (_) => setState(() => isHoverWebsite = false),
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          title: 'Website',
                          projectDataLists: ProjectData.webProjectDataLists,
                          isMobile: false,
                        ),
                      ),
                    );
                  },
                  child: buildProjectCard(
                    imagePath: 'assets/images/web.png',
                    title: 'Website',
                    isHover: isHoverWebsite,
                  ),
                ),
              ),

              // Mobile App
              MouseRegion(
                onEnter: (_) => setState(() => isHoverMobile = true),
                onExit: (_) => setState(() => isHoverMobile = false),
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          title: 'Mobile App',
                          projectDataLists: ProjectData.mobileProjectDataList,
                          isMobile: true,
                        ),
                      ),
                    );
                  },
                  child: buildProjectCard(
                    imagePath: 'assets/images/android.png',
                    title: 'Mobile App',
                    isHover: isHoverMobile,
                  ),
                ),
              ),

              // UI/UX
              MouseRegion(
                onEnter: (_) => setState(() => isHoverUiUx = true),
                onExit: (_) => setState(() => isHoverUiUx = false),
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UiUxScreen(
                          projectDataList: ProjectData.uiuxProjectDataList,
                        ),
                      ),
                    );
                  },
                  child: buildProjectCard(
                    imagePath: 'assets/images/ui_ux.png',
                    title: 'UI/UX',
                    isHover: isHoverUiUx,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  /// Reusable widget for project card
  Widget buildProjectCard({
    required String imagePath,
    required String title,
    required bool isHover,
  }) {
    return Container(
      width: 100,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Image.asset(imagePath, fit: BoxFit.contain),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              color: isHover ? Colors.blue : const Color(0xFFD9D9D9),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            padding: const EdgeInsets.all(4),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
