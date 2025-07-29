import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ProjectWidget extends StatelessWidget {
  const ProjectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('What he has done',style: GoogleFonts.bokor(
          fontSize: 25,
        ),),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Column(
                  children: [
                    Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Image.asset('images/web.png',fit: BoxFit.contain,),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)
                        ) ),
                        padding: EdgeInsets.all(4),
                        child: Center(child: Text('Website',style: TextStyle(color: Colors.white),)))
                  ],
                ),
              ),
              Container(
                // height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Column(
                  children: [
                    Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Image.asset('images/android.png',fit: BoxFit.contain,),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)
                            ) ),
                        padding: EdgeInsets.all(4),
                        child: Center(child: Text('Mobile App',style: TextStyle(color: Colors.white),)))
                  ],
                ),
              ),
              Container(
                // height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Column(
                  children: [
                    Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Image.asset('images/ui_ux.png',fit: BoxFit.contain,),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)
                            ) ),
                        padding: EdgeInsets.all(4),
                        child: Center(child: Text('UI/UX',style: TextStyle(color: Colors.white),)))
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20,)
      ],
    );
  }
}
