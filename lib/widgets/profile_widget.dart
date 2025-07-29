import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('His Profile',style: GoogleFonts.bokor(
            fontSize: 25,
          )),
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
                child: Text('CGPA:4.00'),
              )
            ],
          ),
          SizedBox(height: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Skill',style: GoogleFonts.bokor(fontSize: 20),),
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
