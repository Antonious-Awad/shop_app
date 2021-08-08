import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image(
            image: AssetImage("assets/images/onboard_1.jpg"),
          ),
          SizedBox(height: 30,),
          Text(
            "Screen Title",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}
