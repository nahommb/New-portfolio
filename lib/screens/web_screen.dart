import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/data/project_data.dart';

class WebScreen extends StatelessWidget {
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
                "Website",
                style: GoogleFonts.bokor(fontSize: 35),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: ProjectData.projectDataLists.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "${ProjectData.projectDataLists[index]['title']}",
                        style: GoogleFonts.bokor(fontSize: 26),
                      ),
                      SizedBox(height: 10),
                      Text('wwdwdjwajdiowd dowidjioaw'),

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
                                        height: 100,
                                        child: ListView.builder(
                                          itemCount: 4,
                                          shrinkWrap: true, // ✅ fix
                                          physics:
                                              NeverScrollableScrollPhysics(), // ✅ fix
                                          itemBuilder: (context, index) {
                                            return Text(
                                                'Flutter, Firebase, Node.js, Express.js, MongoDB');
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                                Container(
                                  height: 200,
                                  width: screenWidth * 0.3,
                                  color: Colors.amber,
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
                                  height: 100,
                                  child: ListView.builder(
                                    itemCount: 4,
                                    shrinkWrap: true, // ✅ fix
                                    physics:
                                        NeverScrollableScrollPhysics(), // ✅ fix
                                    itemBuilder: (context, index) {
                                      return Text(
                                          'Flutter, Firebase, Node.js, Express.js, MongoDB');
                                    },
                                  ),
                                ),
                              ],
                            ),

                      SizedBox(height: 10),
                      Text('preview link: www.niyasportswear.com'),
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
