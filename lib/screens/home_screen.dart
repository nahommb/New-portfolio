import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blueAccent,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 50,),
              TextButton(onPressed:(){}, child: Text('Test')),
              TextButton(onPressed:(){}, child: Text('Test')),
              TextButton(onPressed:(){}, child: Text('Test')),
              Spacer(),
              Row(
                children: [
                  Icon(Icons.phone,color: Colors.white,),
                  SizedBox(width: 10,),
                  SelectableText('+251946596354',style: TextStyle(color: Colors.white),),
                  SizedBox(width: 20,),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 700,
          width: double.infinity,
          color: Colors.blueAccent,
          child: ,
        )
      ],
    );
  }
}
