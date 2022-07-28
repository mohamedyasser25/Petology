import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../screens/Authentication/Login/LoginScreen.dart';



class CustomBtn extends StatelessWidget {
  String? TxtBtn;
  Color TxtColrBtn;
  Color ColrBtn;
  StatefulWidget Page;


  CustomBtn({
     required this.TxtBtn,
     required this.TxtColrBtn,
    required this.ColrBtn,
    required this.Page,

  });

  late BuildContext context;
  void NavigatorTo(BuildContext context)
  {
    Navigator.push(context, MaterialPageRoute(
        builder: (BuildContext context) {
          return Page;
        }));

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 80,
      width: 518,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(240, 60),
          primary: ColrBtn,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22.5)),
          //backgroundColor: Colors.transparent
        ),
        onPressed: () {
          return NavigatorTo(context);
        },
        child: Padding(
          padding:
          const EdgeInsets.only(right: 55.0, left: 20),
          child: Text(
            "$TxtBtn",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: TxtColrBtn,
                fontSize: fontBtn,
                fontWeight: FontWeight.bold,),
          ),
        ),
      ),
    );
  }


}
