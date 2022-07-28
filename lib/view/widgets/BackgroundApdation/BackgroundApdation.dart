import 'package:flutter/material.dart';

class BackgroundApdation extends StatelessWidget {
  const BackgroundApdation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        //pattern background
        Container(
          //color: brown,
          decoration: BoxDecoration(
              image: new DecorationImage(
                  image: AssetImage("assets/images/background/Rectangle 11.png"),
                  fit: BoxFit.cover)),
        ),

        //bones background
        Container(
          margin: EdgeInsets.only(top: 150),
          height: 400,
          //color: brown,
          decoration: BoxDecoration(
              image: new DecorationImage(
                  image: AssetImage("assets/images/background/background2.png"),

                  fit: BoxFit.contain)),
        ),

        //bowl background
        Container(
          margin: EdgeInsets.only(top: 550),
          height: 200,
          //color: brown,
          decoration: BoxDecoration(
              image: new DecorationImage(
                  image: AssetImage("assets/images/299-removebg-preview.png"),

                  fit: BoxFit.contain)),
        ),



      ],

    );
  }
}
