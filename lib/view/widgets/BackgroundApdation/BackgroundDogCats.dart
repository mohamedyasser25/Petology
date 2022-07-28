import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../screens/Help/HelpFriendScreen.dart';
import '../Buttons/CustomArrowBtn.dart';
import '../Text/CustomTxt.dart';

class BackgroundDogCats extends StatelessWidget {
  const BackgroundDogCats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          //color: Colors.red,
          width: 500,
          height: 500,
          margin: EdgeInsets.only(top: 80, left: 100),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //title
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: CustomTxt(
                  Title: 'Not only people \nneed a house',
                  ColorTxt: white,
                  FontSizeTxt: 50,
                  FontWeightTxt: FontWeight.bold,
                ),
              ),

              //subtitle
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 70),
                child: CustomTxt(
                  Title:
                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy.',
                  ColorTxt: colSubTitle,
                  FontSizeTxt: 17,
                  FontWeightTxt: FontWeight.bold,
                ),
              ),

              //button help
              CustomArrowBtn(
                colBtn: white,
                txtBtn: "Help them",
                colTxtBtn: black,
                fontSize: fontBtn,
                colIconArrow: black,
                Page: HelpFriendScreen(),),
            ],
          ),
        ),

        //img
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 180, left: 90),
              child: Image.asset(
                "assets/images/background/white circle background.png",
                width: 550,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 374, left: 150),
              child: Image.asset(
                "assets/images/background/Ellipse 3.png",
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 220, bottom: 130),
              child: Image.asset("assets/images/pic-aboutus.png",
                  width: 350),
            )
          ],
        ),
      ],
    );
  }
}
