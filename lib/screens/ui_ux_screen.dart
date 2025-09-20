import 'package:flutter/material.dart'; 
import 'package:google_fonts/google_fonts.dart';


class UiUxScreen extends StatelessWidget {

   final projectDataList ;

  UiUxScreen({required this.projectDataList});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 40),
        child: Column(
          children: [
            Center(
              child: Text(
                'UI UX',
                style: GoogleFonts.bokor(fontSize: 35),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: projectDataList.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        projectDataList[index]['title'],
                        style: GoogleFonts.bokor(fontSize: 26),
                      ),
                      SizedBox(height: 10),
                      Text(projectDataList[index]['description']),
                      

                      SizedBox(height: 10),
                      Container(
                        height: 700,
                        child: ListView.builder(itemCount: projectDataList[index]['imagePath'].length, itemBuilder: (context,imageIndex){
                          return Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding: EdgeInsets.all(10),
                        // height: 400,
                        width:screenWidth*0.9,
                        color:Color.fromARGB(255, 255, 242, 242),
                        child: Image.asset(projectDataList[index]['imagePath'][imageIndex]),
                      );
                        }),
                      ),         
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}  
