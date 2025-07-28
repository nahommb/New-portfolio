import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(40),
            child: Text('Hi,Welcome ',style: TextStyle(color: Colors.white,fontSize: 40),),
          ),
          Container(
              child:Image.asset('images/profile_image.png')
          )
        ],
      ),
        Container(
          height: 1000,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin:Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black,
                  Colors.black,
            ])
          ),
        ),

      ],
    );
  }
}
