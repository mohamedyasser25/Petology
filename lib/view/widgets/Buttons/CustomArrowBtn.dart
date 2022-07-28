import 'package:flutter/material.dart';

import '../../screens/Authentication/Login/LoginScreen.dart';




class CustomArrowBtn extends StatelessWidget {
  Color? colBtn;
  String? txtBtn;
  Color? colTxtBtn;
  double? fontSize;
  Color? colIconArrow;
  StatefulWidget Page;

  CustomArrowBtn({
    required this.colBtn,
    required this.txtBtn,
    required this.colTxtBtn,
    required this.fontSize,
    required this.colIconArrow,
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
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(300, 60),
              primary: colBtn,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              //backgroundColor: Colors.transparent
            ),
            onPressed: () {
              return NavigatorTo(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 55.0, left: 20),
              child: Text(
                "$txtBtn",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: colTxtBtn,
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding:
          const EdgeInsets.only(left: 230, top: 20.5),
          child: Icon(
            Icons.arrow_forward_ios_rounded,
            color: colIconArrow,
            size: 25,
          ),
        )
      ],
    );
  }


}
