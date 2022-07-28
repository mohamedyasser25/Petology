import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_flutter_petology/view/widgets/Buttons/CustomCircleBtn.dart';
import 'package:hackathon_flutter_petology/view/widgets/Buttons/CustomSwipeBtn.dart';
import 'package:hackathon_flutter_petology/view/widgets/Footer/Footerr.dart';
import 'package:hackathon_flutter_petology/view/widgets/Text/CustomTxt.dart';

import '../../../constants.dart';
import '../../widgets/Buttons/CustomAppBarBtn.dart';
import '../../widgets/Buttons/CustomTxtBtn.dart';
import '../Authentication/Login/LoginScreen.dart';
import '../Authentication/SignUp/SignUpScreen.dart';
import '../Home/HomeScreen.dart';
import '../Request/RequestScreen.dart';
import 'AdaptionHomeScreen.dart';

class AdaptionInfoScreen extends StatefulWidget {
  const AdaptionInfoScreen({Key? key}) : super(key: key);

  @override
  State<AdaptionInfoScreen> createState() => _AdaptionInfoScreenState();
}

class _AdaptionInfoScreenState extends State<AdaptionInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image:
                  AssetImage('assets/images/background/Rectangle 11.png'),
                  fit: BoxFit.cover)),
        ),
        leading: Image.asset(
          "assets/images/Logo/logo.png",
        ),
        leadingWidth: 300,
        actions: [
          //About Us
          CustomTxtBtn(Txt: 'About Us', Page: HomeScreen(),),

          //Categories
          CustomTxtBtn(Txt: 'Adaptaion', Page: AdaptionHomeScreen(),),

          //Request
          CustomTxtBtn(Txt: 'Request', Page: RequestScreen(),),

          //Services
          CustomTxtBtn(Txt: 'Services', Page: HomeScreen(),),

          //SignUp
          CustomAppBarBtn(Txt: 'SignUp', Page: SignUpScreen(),),

          //Login
          CustomAppBarBtn(Txt: 'Login', Page: LoginScreen()),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [

              //background
              Container(
                  height: 700,
                  //color: brown,
                  decoration: BoxDecoration(
                      image: new DecorationImage(
                          image: AssetImage("assets/images/background/Rectangle 11.png"),
                          fit: BoxFit.cover)),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(right: 180),
                    child: CustomSwipeBtn(textDirection: TextDirection.rtl),
                  ),

                  //img
                  Stack(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(top: 180, left: 70),
                        child: Image.asset(
                          "assets/images/background/white circle background.png",
                          width: 550,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 374, left: 130),
                        child: Image.asset(
                          "assets/images/background/Ellipse 3.png",
                          height: 200,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 200, bottom: 130),
                        child: Image.asset("assets/images/pic-aboutus.png",
                            width: 350),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 210),
                    child: CustomSwipeBtn(textDirection: TextDirection.ltr),
                  ),
                  Container(
                      height: 700,
                      //color: brown,
                      decoration: BoxDecoration(
                          image: new DecorationImage(
                              image: AssetImage("assets/images/background/Rectangle 11.png"),
                              fit: BoxFit.cover))),
                ],
              )),

              //body
              Container(
                padding: const EdgeInsets.only(top: 70, left: 70),
                width: double.infinity,
                height: 1500,

                child:  Column(
                   // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      //Name
                      CustomTxt(
                          Title: "Elsa",
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLastTitle,
                          FontWeightTxt: FontWeight.bold),

                      //Shared by
                      SizedBox(height: 30,),
                      CustomTxt(
                          Title: "Shared by: Ola Safwat ",
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLastText2,
                          FontWeightTxt: FontWeight.normal),

                      //Specs of pet
                      SizedBox(height: 30,),
                      CustomTxt(
                          Title: "Domestic Short Hair  Fredericton, NB",
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLastText2,
                          FontWeightTxt: FontWeight.normal),

                      //Rest of Specs pet
                      SizedBox(height: 15,),
                       Container(
                          height: 90,
                          width: double.maxFinite,
                          color: colRowLine,
                          child: Row(
                            children: [
                              CustomTxt(
                                  Title: "Adult  Female  Medium  Tabby (Brown / Chocolate)",
                                  ColorTxt: aftergray,
                                  FontSizeTxt: fontLastText2,
                                  FontWeightTxt: FontWeight.bold),
                            ],
                          ),
                        ),

                      //About
                      SizedBox(height: 30,),
                      CustomTxt(
                          Title: "About",
                          ColorTxt: aftergray,
                          FontSizeTxt: 50,
                          FontWeightTxt: FontWeight.bold),

                      //HOUSE-TRAINED
                      SizedBox(height: 30,),
                      CustomTxt(
                          Title: "HOUSE-TRAINED \nYes",
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLastText2,
                          FontWeightTxt: FontWeight.normal),

                      //HEALTH
                      SizedBox(height: 30,),
                      CustomTxt(
                          Title: "HEALTH \nVaccinations up to date, spayed / neutered.",
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLastText2,
                          FontWeightTxt: FontWeight.normal),

                      //GOOD
                      SizedBox(height: 30,),
                      CustomTxt(
                          Title: "GOOD IN A HOME WITH Other \ncats.",
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLastText2,
                          FontWeightTxt: FontWeight.normal),


                      //nChildren
                      SizedBox(height: 30,),
                      CustomTxt(
                          Title: "PREFERS A HOME WITHOUT \nChildren.",
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLastText2,
                          FontWeightTxt: FontWeight.normal),

                      //row + alram
                      SizedBox(height: 15,),
                      Container(
                        height: 90,
                        width: double.maxFinite,
                        color: colRowLine,
                        child: Row(
                          children: [

                            //alarm
                            Container(
                                margin: EdgeInsets.only(left:30),
                                child: Image.asset("assets/images/icons/Icon ionic-ios-notifications-outline.png",width: 50,)),

                            //txt
                            Container(
                              margin: EdgeInsets.only(left:60),
                              child: CustomTxt(
                                  Title: "Petfinder recommends that you should always take reasonable security steps before making adabtion.",
                                  ColorTxt: aftergray,
                                  FontSizeTxt: 20,
                                  FontWeightTxt: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),

                      //Meet Elsa
                      SizedBox(height: 30,),
                      CustomTxt(
                          Title: "Meet Elsa",
                          ColorTxt: aftergray,
                          FontSizeTxt: 50,
                          FontWeightTxt: FontWeight.bold),

                      //Hi
                      SizedBox(height: 30,),
                      CustomTxt(
                          Title: "Hi",
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLastText2,
                          FontWeightTxt: FontWeight.normal),


                      SizedBox(height: 30,),
                      CustomTxt(
                          Title: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore \net dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. \nStet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor \nsit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna \naliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita",
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLastText2,
                          FontWeightTxt: FontWeight.normal),
                      SizedBox(height: 30,),
                      CustomTxt(
                          Title: "kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet, consetetur\n sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. \nAt vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est \nLorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod \ntempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo \nduo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt \nut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet cli",
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLastText2,
                          FontWeightTxt: FontWeight.normal),



                    ],
                  ),



              ),
              SizedBox(height: 20,),

              //footer
              Footerr()

            ],
          ),

      ),
    );
  }
}
