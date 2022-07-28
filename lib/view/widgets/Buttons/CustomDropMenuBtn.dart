import 'package:flutter/material.dart';

import '../../../constants.dart';



class CustomDropMenuBtn extends StatefulWidget {

  String selectedValue = "USA";
/*  var Txt;
  var ValTxt;
  List<DropdownMenuItem<String>> menuItems = [];*/
  String? labelText;
  var BoxWidth;
  CustomDropMenuBtn({
    required this.BoxWidth,
  });
/*  CustomDropMenuBtn.menu({
    required this.Txt,
    required this.ValTxt,
  });
  CustomDropMenuBtn.rest({
    required this.selectedValue,
    required this.labelText,
    required this.menuItems,
  });*/

  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
    //CustomDropMenuBtn.menu(Txt, ValTxt)
      //DropdownMenuItem(child: Text("Country"),value: "Country"),

      DropdownMenuItem(child: Text("USA"),value: "USA"),
      DropdownMenuItem(child: Text("England"),value: "England"),
      DropdownMenuItem(child: Text("England"),value: "England"),
    ];
    return menuItems;
  }
  @override
  State<CustomDropMenuBtn> createState() => _CustomDropMenuBtnState();


}

class _CustomDropMenuBtnState extends State<CustomDropMenuBtn> {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      elevation: 18,
      child: Container(
        width: widget.BoxWidth,
        child: DropdownButtonFormField(
            decoration: InputDecoration(
              labelText: widget.labelText,
              //helperText: "Country",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: transparent, width: 2),
                borderRadius: BorderRadius.circular(15),
              ),

              border: OutlineInputBorder(
                borderSide: BorderSide(color: transparent, width: 2),
                borderRadius: BorderRadius.circular(15),
              ),
              //focusColor: white,
              //filled: true,
              //fillColor: white,
            ),
            dropdownColor: white,
            value: widget.selectedValue,
            onChanged: (String? newValue) {
              setState(() {
                widget.selectedValue = newValue!;
              });
            },
            items: widget.dropdownItems),
      ),
    );
  }
}

