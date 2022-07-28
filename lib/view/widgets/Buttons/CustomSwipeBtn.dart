import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../screens/Authentication/Login/LoginScreen.dart';


class CustomSwipeBtn extends StatelessWidget {
  TextDirection textDirection;


  CustomSwipeBtn({
    required this.textDirection,

  });



  @override
  Widget build(BuildContext context) {
    return Container(

      child: FloatingActionButton(
        backgroundColor: brown,
        onPressed: () {

        },
        child: Icon(textDirection:textDirection,
          Icons.arrow_forward_ios,
          color: white,


        ),

      ),
    );
  }


}
