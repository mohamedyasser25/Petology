import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../screens/Authentication/Login/LoginScreen.dart';

class CustomHoverBtn extends StatelessWidget {
  double widthBtn;
  double heightBtn;
  Color hoverColBtn;
  Color colBtn;
  double thicknessBorder;
  String? txtBtn;
  Color colrTxtBtn;
  double? fontSizeBtn;
  StatefulWidget Page;

  CustomHoverBtn({
    required this.widthBtn,
    required this.heightBtn,
    required this.hoverColBtn,
    required this.colBtn,
    required this.thicknessBorder,
    required this.txtBtn,
    required this.colrTxtBtn,
    required this.fontSizeBtn,
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
    return ButtonTheme(
      minWidth: widthBtn,
      height: heightBtn,
      child: RaisedButton(
        highlightElevation: 3,
        hoverColor: hoverColBtn,
        hoverElevation: 40,
        color: colBtn,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: aftergray,width: thicknessBorder)),


        onPressed: () {
          return NavigatorTo(context);
        },
        child: Padding(
          padding: const EdgeInsets.only(
              right: 55.0, left: 50,top:130),
          child: Text(
            "$txtBtn",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: colrTxtBtn,
              fontSize: fontSizeBtn,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }


}
