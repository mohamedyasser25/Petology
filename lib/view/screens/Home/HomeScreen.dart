import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../widgets/Buttons/CustomAppBarBtn.dart';
import '../../widgets/Buttons/CustomArrowBtn.dart';
import '../../widgets/Buttons/CustomBorderBtn.dart';
import '../../widgets/Buttons/CustomCircleBtn.dart';
import '../../widgets/Buttons/CustomHoverBtn.dart';
import '../../widgets/Buttons/CustomSwipeBtn.dart';
import '../../widgets/Buttons/CustomTxtBtn.dart';


import '../../widgets/Footer/Footerr.dart';
import '../../widgets/Footer/FooterForm.dart';
import '../../widgets/Text/CustomTxt.dart';
import '../Adaption/AdaptionHomeScreen.dart';
import '../Authentication/Login/LoginScreen.dart';
import 'dart:math' as math;

import '../Authentication/SignUp/SignUpScreen.dart';
import '../ChooseDogsOrCats/ChooseDogsOrCatsScreen.dart';
import '../Help/HelpFriendScreen.dart';
import '../Request/RequestScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: brown,
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

      body: Container(
        decoration: BoxDecoration(
            image: new DecorationImage(
                image: AssetImage("assets/images/background/Rectangle 11.png"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Page 1
              Row(
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
              ),

              //Page 2
              Container(
                color: white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
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

                        //cat
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 180, bottom: 130, top: 150),
                          child: Image.asset("assets/images/pic-aboutus22.png",
                              width: 350),
                        ),

                        //dog
                        Padding(
                          padding:
                          const EdgeInsets.only(left: 220, bottom: 130),
                          child: Image.asset("assets/images/pic-aboutus2.png",
                              width: 350),
                        ),
                      ],
                    ),

                    //background top right + paragraph
                    Stack(
                      children: [
                        //background top right
                        Container(
                            margin: EdgeInsets.only(right: 50, top: 20),
                            child: Image.asset(
                              "assets/images/background/Icon material-pets.png",
                              width: 500,
                            )),

                        //paragraph
                        Container(
                          //alignment: FractionalOffset.center,
                          //color: Colors.red,
                          width: 500,
                          height: 500,
                          margin: EdgeInsets.only(top: 40, left: 10),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //title
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 60, right: 152),
                                child: CustomTxt(
                                  Title: 'About Petology',
                                  ColorTxt: black,
                                  FontSizeTxt: 50,
                                  FontWeightTxt: FontWeight.bold,
                                ),
                              ),

                              //subtitle
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: CustomTxt(
                                  Title:
                                  "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea.",
                                  ColorTxt: Colors.black45,
                                  FontSizeTxt: 14,
                                  FontWeightTxt: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //Page 3
              Container(
                color: lightblue,
                height: 600,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            //leg top
                            /* Container(
                                margin: EdgeInsets.only(bottom: 150, left: 480),
                                child: Transform(
                                    transform: Matrix4.rotationY(math.pi),
                                    child: Image.asset(
                                      "assets/images/background/Icon material-pets.png",color: colrTextBtn,
                                      width: 85,
                                    ))),*/

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
                                          Page: AdaptionHomeScreen(),),
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
                                          Page: AdaptionHomeScreen()),
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

              //Page 4
              Container(
                color: white,
                height: 1000,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        //title
                        Padding(
                          padding: const EdgeInsets.only(top: 90),
                          child: CustomTxt(
                            Title: '  Our friends who \nlooking for a house',
                            ColorTxt: black,
                            FontSizeTxt: fontLastTitle,
                            FontWeightTxt: FontWeight.bold,
                          ),
                        ),

                        SizedBox(
                          height: 18,
                        ),

                        //btns
                        Row(
                          children: [
                            //btn swipe right
                            CustomSwipeBtn(textDirection: TextDirection.rtl,),

                            //btn 1
                            Container(
                              margin: EdgeInsets.only(left: 70),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  //hover btn
                                  Container(
                                    margin: const EdgeInsets.only(top: 20),
                                    child: CustomHoverBtn(
                                        widthBtn: 340,
                                        heightBtn: 500,
                                        hoverColBtn: white,
                                        colBtn: white,
                                        thicknessBorder: 3,
                                        txtBtn: "Caty",
                                        colrTxtBtn: aftergray,
                                        fontSizeBtn: fontLoginText,
                                        Page: AdaptionHomeScreen()),
                                  ),

                                  //img
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 190),
                                    child: Image.asset(
                                      "assets/images/pic-aboutus22.png",
                                      height: 260,
                                    ),
                                  ),

                                  //btn read more
                                  Container(
                                    margin: EdgeInsets.only(top: 350),
                                    child: ButtonTheme(
                                      minWidth: 250,
                                      height: 80,
                                      child: CustomBorderBtn(
                                        colBtn: white,
                                        thickness: 3,
                                        colThickness: aftergray,
                                        colTxt: colrTextBtn,
                                          Page: AdaptionHomeScreen(),

                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 65,
                            ),

                            //btn 2
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                //hover btn
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  child: CustomHoverBtn(
                                      widthBtn: 340,
                                      heightBtn: 500,
                                      hoverColBtn: white,
                                      colBtn: white,
                                      thicknessBorder: 3,
                                      txtBtn: "Elsa",
                                      colrTxtBtn: aftergray,
                                      fontSizeBtn: fontLoginText,
                                      Page: AdaptionHomeScreen()),
                                ),

                                //img
                                Container(
                                  margin: const EdgeInsets.only(bottom: 200),
                                  child: Image.asset(
                                    "assets/images/pic-aboutus2.png",
                                    height: 380,
                                  ),
                                ),

                                //btn read more
                                Container(
                                  margin: EdgeInsets.only(top: 350),
                                  child: ButtonTheme(
                                    minWidth: 250,
                                    height: 80,
                                    child: CustomBorderBtn(
                                      colBtn: white,
                                      thickness: 3,
                                      colThickness: aftergray,
                                      colTxt: colrTextBtn,
                                        Page: AdaptionHomeScreen()
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 65,
                            ),

                            //btn 3
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                //hover btn
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  child: CustomHoverBtn(
                                      widthBtn: 340,
                                      heightBtn: 500,
                                      hoverColBtn: white,
                                      colBtn: white,
                                      thicknessBorder: 3,
                                      txtBtn: "Doby",
                                      colrTxtBtn: aftergray,
                                      fontSizeBtn: fontLoginText,
                                      Page: AdaptionHomeScreen()),
                                ),

                                //img
                                Container(
                                  margin: const EdgeInsets.only(bottom: 200),
                                  child: Image.asset(
                                    "assets/images/pic-aboutus3.png",
                                    height: 380,
                                  ),
                                ),

                                //btn read more
                                Container(
                                  margin: EdgeInsets.only(top: 350),
                                  child: ButtonTheme(
                                    minWidth: 250,
                                    height: 80,
                                    child: CustomBorderBtn(
                                      colBtn: white,
                                      thickness: 3,
                                      colThickness: aftergray,
                                      colTxt: colrTextBtn,
                                        Page: AdaptionHomeScreen()
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 65,
                            ),

                            //btn swipe left
                            CustomSwipeBtn(textDirection: TextDirection.ltr,)
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),

                        //btn show more
                        CustomArrowBtn(
                            colBtn: aftergray,
                            txtBtn: "Show more",
                            colTxtBtn: colrTextBtn,
                            fontSize: fontBtn,
                            colIconArrow: colrTextBtn,
                            Page: AdaptionHomeScreen()),
                      ],
                    )
                  ],
                ),
              ),

              //Page 5
              Container(
                color: lightblue,
                height: 900,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        //title
                        Padding(
                          padding: const EdgeInsets.only(top: 90),
                          child: CustomTxt(
                            Title:
                            'How to take care of \n       your friends? ',
                            ColorTxt: black,
                            FontSizeTxt: fontLastTitle,
                            FontWeightTxt: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Row(
                          children: [
                            CustomCircleBtn(
                              txtBtn: 'Pet Food',
                              imgBtn: 'assets/images/icons/Group 75.png',
                              sizeImg: 100,
                              Page: ChooseDogsOrCatsScreen(),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            CustomCircleBtn(
                              txtBtn: 'Tranpostaion',
                              imgBtn: 'assets/images/icons/transportation.png',
                              sizeImg: 130,
                                Page: ChooseDogsOrCatsScreen()
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            CustomCircleBtn(
                              txtBtn: 'Toys',
                              imgBtn: 'assets/images/icons/toys.png',
                              sizeImg: 120,
                                Page: ChooseDogsOrCatsScreen()
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            CustomCircleBtn(
                                txtBtn: 'Bowls and Cups',
                                imgBtn: 'assets/images/icons/bowl.png',
                                sizeImg: 130,
                                Page: ChooseDogsOrCatsScreen()),
                          ],
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            CustomCircleBtn(
                                txtBtn: 'Inoculation',
                                imgBtn: 'assets/images/icons/Inoculation.png',
                                sizeImg: 120,
                                Page: ChooseDogsOrCatsScreen()),

                            SizedBox(
                              width: 50,
                            ),
                            CustomCircleBtn(
                                txtBtn: 'Sleeping Area',
                                imgBtn: 'assets/images/icons/bed.png',
                                sizeImg: 100,
                                Page: ChooseDogsOrCatsScreen()),

                            SizedBox(
                              width: 50,
                            ),
                            CustomCircleBtn(
                                txtBtn: 'Vitamins',
                                imgBtn: 'assets/images/icons/vitamins.png',
                                sizeImg: 120,
                                Page: ChooseDogsOrCatsScreen()),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),

              //Footer
              Footerr()
            ],
          ),
        ),
      ),
    );
  }
}
