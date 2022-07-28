import 'package:flutter/material.dart';

import '../../../constants.dart';


class CustomTxtFormField extends StatelessWidget {
  String? labelText;
  double? BoxWidth;


  CustomTxtFormField({
    required this.labelText,
    required this.BoxWidth,

  });


  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      elevation: 18,
      //shadowColor: Colors.purple,
      child: Container(
        width: BoxWidth,
        child: TextFormField(

          decoration: InputDecoration(
              labelText: labelText,
              labelStyle: TextStyle(color: gray),
              helperStyle: TextStyle(color: gray),

              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(color: transparent)),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(color: transparent)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(color: transparent))),

        ),
      ),
    );
  }

}
