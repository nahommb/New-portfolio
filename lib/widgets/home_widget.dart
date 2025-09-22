import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final crossAxisCount = screenWidth < 780 ? 1 : 2;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: double.infinity,
          color: Color(0xFFD9D9D9),
          child: Center(child: Text('Wanted',textAlign: TextAlign.center,
            style: GoogleFonts.bokor(
              fontSize: 55,
              // fontWeight: FontWeight.bold
            ))),
            // style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,
            //     fontFamily: "Bokor"),)),
        ),
        SizedBox(height: 30,),
        screenWidth>590?
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20,top: 20),
                      height: 200,
                      width: 240,
                      color: Color(0xFFD9D9D9),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,bottom: 20),
                      height: 240,
                      width: 200,
                      color: Colors.black12,
                      child: Image.asset('images/profile_2.JPG'),
                    )
                  ],
                ),
                Text('Nahom Melese',style: GoogleFonts.bokor(fontSize: 25),),
              ],
            ),
            Column(
              children: [
                Text('Who is he',style: GoogleFonts.bokor(fontSize: 25),),
                Container(
                  padding: EdgeInsets.all(20),
                  // height: 400,
                  width: screenWidth*0.4,
                  // color: Colors.blue,
                  child: Text('I am a passionate Software Engineering with hands-on experience in building web and mobile applications. My expertise includes working with Node.js, MongoDB, SQL, and the MERN stack to develop dynamic and scalable web solutions, as well as creating cross-platform mobile applications using Flutter. I enjoy solving problems through clean, efficient code and have built projects ranging from e-commerce platforms to official company websites. I am eager to continue learning, take on new challenges, and contribute to innovative software solutions.'),
                ),
              ],
            )
        ],):
        Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20,top: 20),
                  height: 200,
                  width: 240,
                  color: Color(0xFFD9D9D9),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20,bottom: 20),
                  height: 240,
                  width: 200,
                  color: Colors.black12,
                  child: Image.asset('images/profile_2.JPG'),
                )
              ],
            ),
            Text('Neymar Junior',style: GoogleFonts.bokor(fontSize: 15),),
            SizedBox(height: 30,),
            Text('Who is he',style: GoogleFonts.bokor(fontSize: 25),),
            Container(
              padding: EdgeInsets.all(20),
              // height: 400,
              width: double.infinity,
              // color: Colors.blue,
              child: Text('In the Niya Sports Wear project, I faced a complex issue with state synchronization between the Redux store and localStorage, especially during user login and cart updates. The cart would sometimes reset unexpectedly on page reloads.'
                  'To solve this, I implemented middleware to persist and rehydrate the Redux state from localStorage. I also carefully managed state updates with Redux Toolkit and ensured every async API call was handled with proper loading and error states using Redux-Saga. This made the app more stable and user-friendly across sessions.'),
            )
          ],
        ),

      ],
    );
  }
}
