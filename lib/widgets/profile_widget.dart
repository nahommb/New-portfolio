import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('His Profile',style: GoogleFonts.bokor(
                fontSize: 25,
              )),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Eductaion',style: GoogleFonts.bokor(fontSize: 20),),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,bottom: 6),
                child: Text('Arbaminch Unversity Bsc Degree in Software Engineering'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Text('CGPA:3.71'),
              )
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: screenWidth>590? MainAxisAlignment.end:MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: screenWidth>590?CrossAxisAlignment.center:CrossAxisAlignment.start,
                children: [
                  Text('Skill',style: GoogleFonts.bokor(fontSize: 20),),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,bottom: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Front-end',style: GoogleFonts.bokor(fontSize: 17),),
                          ],
                        ),
                        Text(' React, Redux, HTML, CSS, JavaScript, Flutter,'),
                        Text('Material-UI, Bootstrap, Figma'),
                        Row(
                          children: [
                            Text('Back-end',style: GoogleFonts.bokor(fontSize: 17),),
                          ],
                        ),
                        Text('Node.js, Express, RESTful APIs, Firebase '),
                        Row(
                          children: [
                            Text('Database',style: GoogleFonts.bokor(fontSize: 17),),
                          ],
                        ),
                        Text('MongoDB, SQL, Firebase Firestore'),
                        Row(
                          children: [
                            Text('Mobile Development',style: GoogleFonts.bokor(fontSize: 17),),
                          ],
                        ),
                        Text(' Flutter, Dart, API integration, Firebase Authentication'),
                        Row(
                          children: [
                            Text('Tools',style: GoogleFonts.bokor(fontSize: 17),),
                          ],
                        ),
                        Text('Git, GitHub, Postman, Docker')
                      ],
                    ),
                  ),
    ]),
            ],
          ),
          SizedBox(height: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Experience',style: GoogleFonts.bokor(fontSize: 20),),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,bottom: 6),
                child: Text('Arbaminch Unversity Bsc Degree in Software Engineering'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Text('CGPA:4.00'),
              )
            ],
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
