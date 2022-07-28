import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../screens/Authentication/Login/LoginScreen.dart';



class CustomBorderBtn extends StatelessWidget {

  Color colBtn;
  Color colThickness;
  double thickness;
  Color colTxt;
  StatefulWidget Page;


  CustomBorderBtn({
    required this.colBtn,
    required this.colThickness,
    required this.thickness,
    required this.colTxt,
    required this.Page,
  });

  void NavigatorTo(BuildContext context)
  {
    Navigator.push(context, MaterialPageRoute(
        builder: (BuildContext context) {
          return Page;
        }));

  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: colBtn, //white,
      shape: RoundedRectangleBorder(
          borderRadius:
          BorderRadius.circular(35),//colrTextBtn,3
          side: BorderSide(
              color: colThickness, width: thickness)),

      onPressed: () {
        return NavigatorTo(context);
      },
      child: Padding(
        padding: const EdgeInsets.only(
            right: 55.0, left: 50),
        child: Text(
          "Read More",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: colTxt,//aftergray
            fontSize: fontBtn,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

}
