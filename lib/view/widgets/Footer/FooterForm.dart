import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../Text/CustomTxt.dart';

class FooterForm extends StatelessWidget {
  String? imgIcon;
  String? txtIocn;
  double? sizeIcon;

  FooterForm({
    required this.imgIcon,
    required this.txtIocn,
    required this.sizeIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "$imgIcon",
          color: colFooter,
          width: sizeIcon,
        ),
        SizedBox(
          width: 50,
        ),
        CustomTxt(
            Title: "$txtIocn",
            ColorTxt: colFooter,
            FontSizeTxt: fontLoginText,
            FontWeightTxt: FontWeight.bold)
      ],
    );
  }
}
