import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../widgets/Buttons/CustomAppBarBtn.dart';
import '../../../widgets/Buttons/CustomAuthBtn.dart';
import '../../../widgets/Buttons/CustomBtn.dart';
import '../../../widgets/Buttons/CustomDropMenuBtn.dart';
import '../../../widgets/Buttons/CustomTxtBtn.dart';

import '../../../widgets/Footer/Footerr.dart';
import '../../../widgets/Text/CustomTxt.dart';
import '../../../widgets/Text/CustomTxtFormField.dart';
import '../../Adaption/AdaptionHomeScreen.dart';
import '../../Home/HomeScreen.dart';
import '../../Request/RequestScreen.dart';
import '../Login/LoginScreen.dart';
import 'dart:math' as math;

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Stack(
            children: [

              Stack(
                children: [
                  //background top
                  Container(
                      margin: EdgeInsets.only(top: 220, left: 250),
                      child: Image.asset(
                        "assets/images/background/Icon material-pets.png",
                        width: 400,
                      )),

                  //background bottom
                  Container(
                      margin: EdgeInsets.only(top: 500, left: 850),
                      child: Image.asset(
                        "assets/images/background/Icon material-pets.png",
                        width: 400,
                      )),


                  //leg top
                  Container(
                      margin: EdgeInsets.only(top: 50, left: 480),
                      child: Transform(
                          transform: Matrix4.rotationY(math.pi),
                          child: Image.asset(
                            "assets/images/leg/small.png",
                            width: 85,
                          ))),

                  //leg bottom
                  Container(
                      margin: EdgeInsets.only(top: 880, left: 1060),
                      child: Image.asset(
                        "assets/images/leg/small.png",
                        width: 85,
                      )),
                ],
              ),

              //border
              Container(
                margin: EdgeInsets.only(bottom: 80, left: 420, right: 420,top: 80),
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: black, width: 2),
                  borderRadius: BorderRadius.circular(25),
                ),


                child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Title
                    SizedBox(height: 18),
                    CustomTxt(
                      Title: 'Sign Up',
                      ColorTxt: brown,
                      FontSizeTxt: fontLastTitle,
                      FontWeightTxt: FontWeight.bold,
                    ),

                    //facebook +google
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //facebook
                        CustomAuthBtn(
                            ImgLogo: 'assets/images/icons/facebook.png',
                            Title: 'Facebook',
                            ColorBtn: blue,
                            ColorTxt: white,
                            SizeImg: 42,
                            Page: HomeScreen()),

                        SizedBox(
                          width: 30,
                        ),
                        //google
                        CustomAuthBtn(
                            ImgLogo: 'assets/images/icons/google.png',
                            Title: 'Google',
                            ColorBtn: white,
                            ColorTxt: black,
                            SizeImg: 30,
                            Page: HomeScreen()),
                      ],
                    ),

                    //line + or
                    SizedBox(height: 20),
                    Row(children: [
                      Expanded(
                          child: Divider(
                              color: brown, thickness: 2, indent: 100)),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 10),
                        child: Text(
                          "Or",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                          child: Divider(
                            color: brown,
                            thickness: 2,
                            endIndent: 100,
                          )),
                    ]),

                    //First Name
                    SizedBox(height: 18),
                    CustomTxtFormField(
                      labelText: 'First Name',
                      BoxWidth: boxWidthTxtField,
                    ),
                    SizedBox(height: 18),

                    //Last Name
                    CustomTxtFormField(
                      labelText: 'Last Name',
                      BoxWidth: boxWidthTxtField,
                    ),
                    SizedBox(height: 18),

                    //Email
                    CustomTxtFormField(
                      labelText: 'Email',
                      BoxWidth: boxWidthTxtField,
                    ),
                    SizedBox(height: 18),

                    //Password
                    CustomTxtFormField(
                      labelText: 'Password',
                      BoxWidth: boxWidthTxtField,
                    ),
                    SizedBox(height: 18),

                    //Re-Enter Password
                    CustomTxtFormField(
                      labelText: 'Re-Enter Password',
                      BoxWidth: boxWidthTxtField,
                    ),
                    SizedBox(height: 18),

                    /*CustomDropMenuBtn.rest(
                            selectedValue: 'USA',
                            labelText: 'Country',
                            menuItems: ["USA","Egy"]),*/

                    //Country
                    CustomDropMenuBtn(BoxWidth: boxWidthTxtField),
                    SizedBox(height: 18),

                    //Button Sign Up
                    /*Container(
                      padding: EdgeInsets.all(10),
                      height: 80,
                      width: 518,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(240, 60),
                          primary: brown,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.5)),
                          //backgroundColor: Colors.transparent
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                                return LoginScreen();
                              }));
                        },
                        child: Padding(
                          padding:
                          const EdgeInsets.only(right: 55.0, left: 20),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Color(0xffFFE3C5),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),*/

                    CustomBtn(TxtBtn: 'Sign Up', TxtColrBtn: colrTextBtn, ColrBtn: brown, Page: HomeScreen(),),

                    //didn't have account
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTxt(
                            Title: "Already have an account?",
                            ColorTxt: gray,
                            FontSizeTxt: fontLastText2,
                            FontWeightTxt: FontWeight.bold,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return LoginScreen();
                                  }));
                            },
                            child: CustomTxt(
                              Title: "Login",
                              ColorTxt: aftergray,
                              FontSizeTxt: fontLastText2,
                              FontWeightTxt: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //footer
              Padding(
                padding: const EdgeInsets.only(top:1050),
                child: Footerr(),
              )


            ],
          ),
        ),
      ),
    );
  }
}
