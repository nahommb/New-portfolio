import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 200,
      width: double.infinity,
      color: Colors.black,
      child: Column(
        children: [
          SizedBox(height: 50,),
          Text('Contact',style: GoogleFonts.bokor(
            color: Colors.white
          ),),
          Spacer(),
          screenWidth>590?
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              fotterElements(iconData: Icons.telegram,name: 'Hermela96',link: 'https'),
              fotterElements(iconData: Icons.email,name: 'nahomjr17@gmail.com',link: 'https'),
              fotterElements(iconData: Icons.facebook,name: 'Telegram',link: 'https'),
              fotterElements(iconData: Icons.phone,name: '+251946596354',link: 'https'),
              
            ],
          ):Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                 Row(
            mainAxisAlignment:screenWidth>590? MainAxisAlignment.spaceAround:MainAxisAlignment.center,
            children: [
              fotterElements(iconData: Icons.telegram,name: 'Hermela96',link: 'https'),
              SizedBox(width: 20,),
              fotterElements(iconData: Icons.email,name: 'nahomjr17@gmail.com',link: 'https'),
          
              
            ],
          ),
             Row(
            mainAxisAlignment:screenWidth>590? MainAxisAlignment.spaceAround:MainAxisAlignment.center,
            children: [
              fotterElements(iconData: Icons.facebook,name: 'Telegram',link: 'https'),
              SizedBox(width: 20,),
              fotterElements(iconData: Icons.phone,name: '+251946596354',link: 'https'),
              
            ],
          )
            ],
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}


Widget fotterElements({required IconData iconData,required String name,required String link}){

  return Container(
    height: 40,
    // color: Colors.blueAccent,
    child: GestureDetector(
      onTap: (){
        print('clicked');
      },
      child: Row(
        children: [
          Icon(iconData,color: Colors.white,),
          SizedBox(width: 5,),
          SelectableText(name,style: TextStyle(color: Colors.white),)
        ],
      ),
    ),
  );
}