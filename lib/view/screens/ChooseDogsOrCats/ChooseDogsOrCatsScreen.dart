import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../widgets/Buttons/CustomHoverBtn.dart';
import '../../widgets/Text/CustomTxt.dart';
import '../Adaption/AdaptionGeneralScreen.dart';
import '../Adaption/AdaptionHomeScreen.dart';

class ChooseDogsOrCatsScreen extends StatefulWidget {
  const ChooseDogsOrCatsScreen({Key? key}) : super(key: key);

  @override
  State<ChooseDogsOrCatsScreen> createState() => _ChooseDogsOrCatsScreenState();
}

class _ChooseDogsOrCatsScreenState extends State<ChooseDogsOrCatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(

    children: [
      Container(
      height: double.infinity,
    decoration: BoxDecoration(
    image: DecorationImage(
        image: AssetImage('assets/images/background/Rectangleblur.png'),
    fit: BoxFit.cover)),

    child:  BackdropFilter(
      filter:  ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child:  Container(
        decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
    ),)),

      Center(
        child: Container(
          margin: EdgeInsets.only(top:100,bottom: 50),
          color: lightblue,
          width: 900,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Column(
                    children: [

                      //title 1
                      Padding(
                        padding: const EdgeInsets.only(top: 90),
                        child: CustomTxt(
                          Title: 'Lets get this right ....',
                          ColorTxt: black,
                          FontSizeTxt: fontLastTitle,
                          FontWeightTxt: FontWeight.bold,
                        ),
                      ),

                      //title 2
                      Padding(
                        padding: const EdgeInsets.only(top: 45),
                        child: CustomTxt(
                            Title: 'What kind of friend you looking for?',
                            ColorTxt: Colors.black,
                            FontSizeTxt: fontSubTitle,
                            FontWeightTxt: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 70,
                      ),

                      //btn dog + btn cat
                      Row(
                        children: [
                          //btn dog
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              //text
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: CustomHoverBtn(
                                  widthBtn: 200,
                                  heightBtn: 210,
                                  hoverColBtn: colrTextBtn,
                                  colBtn: colrTextBtn,
                                  thicknessBorder: 3,
                                  txtBtn: "Dogs",
                                  colrTxtBtn: aftergray,
                                  fontSizeBtn: fontLastText2,
                                  Page: AdaptionGeneralScreen(),),
                              ),

                              //img
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, top: 5),
                                child: Image.asset(
                                  "assets/images/icons/dog.png",
                                  width: 100,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            width: 100,
                          ),

                          //btn cat
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              //text
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: CustomHoverBtn(
                                    widthBtn: 200,
                                    heightBtn: 210,
                                    hoverColBtn: colrTextBtn,
                                    colBtn: lightblue,
                                    thicknessBorder: 1,
                                    txtBtn: "Cats",
                                    colrTxtBtn: aftergray,
                                    fontSizeBtn: fontLastText2,
                                    Page: AdaptionGeneralScreen()),
                              ),

                              //img
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, top: 5),
                                child: Image.asset(
                                  "assets/images/icons/cat.png",
                                  width: 100,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
        ],

      /*decoration: BoxDecoration(
        border: Border.all(color: black, width: 2),
        borderRadius: BorderRadius.circular(25),
      ),*/



      //color: lightblue,


    );
  }
}
