import 'package:flutter/material.dart'; 
import 'package:google_fonts/google_fonts.dart';


class DetailScreen extends StatelessWidget {

  final String title;
  final List<dynamic> projectDataLists ;
  final bool isMobile;
  
  DetailScreen({super.key, required this.title,required this.projectDataLists,required this.isMobile});


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
                title,
                style: GoogleFonts.bokor(fontSize: 35),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: projectDataLists.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "${projectDataLists[index]['title']}",
                        style: GoogleFonts.bokor(fontSize: 26),
                      ),
                      SizedBox(height: 10),
                      Text('${projectDataLists[index]['description']}'),

                      screenWidth > 590
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                      padding: EdgeInsets.only(top: 10,left: screenWidth*0.06,),
                                      child:Text(
                                        'Technology Stack',
                                        style: GoogleFonts.bokor(fontSize: 20),
                                      ),
                                      ),
                                      
                                      Container(
                                        padding: EdgeInsets.only(top: 10,left: screenWidth*0.1),
                                        height: 150,
                                        child: ListView.builder(
                                          itemCount: projectDataLists[index]['technology'].length,
                                          shrinkWrap: true, // ✅ fix
                                          itemBuilder: (context,techindex) {
                                            return Text(
                                                '${projectDataLists[index]['technology'][techindex]}');
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                                Container(
                                  height: 200,
                                  width: isMobile? 150:screenWidth * 0.3,
                                  // color: Colors.amber,
                                  child: Image.asset(projectDataLists[index]['imagePath']),
                                )
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Technology Stack',
                                  style: GoogleFonts.bokor(fontSize: 20),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 10,left: 20),
                                  height: 150,
                                  child: ListView.builder(
                                    itemCount: projectDataLists[index]['technology'].length,
                                    shrinkWrap: true, // ✅ fix
                                    // physics:
                                        // NeverScrollableScrollPhysics(), // ✅ fix
                                    itemBuilder: (context, tindex) {
                                      return Text(
                                          '${projectDataLists[index]['technology'][tindex]}');
                                    },
                                  ),
                                ),
                              ],
                            ),

                      SizedBox(height: 10),
                      Text('${projectDataLists[index]['previewLink']}'),
                      Divider(),
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
