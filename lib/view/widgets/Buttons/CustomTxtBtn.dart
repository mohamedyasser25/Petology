import 'package:flutter/material.dart';

import '../../screens/Authentication/Login/LoginScreen.dart';


class CustomTxtBtn extends StatelessWidget {
  String? Txt;
  StatefulWidget Page;


  CustomTxtBtn({
    required this.Txt,
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
    return TextButton(
      onPressed: () {
        return NavigatorTo(context);
      },
      child: Text(
        "$Txt",
        style: TextStyle(color: Colors.white),
      ),
    );
  }


}
