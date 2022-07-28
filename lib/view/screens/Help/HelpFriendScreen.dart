import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'dart:math' as math;

import '../../widgets/Buttons/CustomAppBarBtn.dart';
import '../../widgets/Buttons/CustomBtn.dart';
import '../../widgets/Buttons/CustomDropMenuBtn.dart';
import '../../widgets/Buttons/CustomTxtBtn.dart';

import '../../widgets/Footer/Footerr.dart';
import '../../widgets/Text/CustomTxt.dart';
import '../../widgets/Text/CustomTxtFormField.dart';
import '../Adaption/AdaptionHomeScreen.dart';
import '../Authentication/Login/LoginScreen.dart';
import '../Authentication/SignUp/SignUpScreen.dart';
import '../Home/HomeScreen.dart';
import '../Request/RequestScreen.dart';


class HelpFriendScreen extends StatefulWidget {
  const HelpFriendScreen({Key? key}) : super(key: key);

  @override
  State<HelpFriendScreen> createState() => _HelpFriendScreenState();
}

class _HelpFriendScreenState extends State<HelpFriendScreen> {
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

              //background top
              Container(
                  margin: EdgeInsets.only(left: 930),
                  child: Image.asset(
                    "assets/images/background/Icon material-pets.png",
                    width: 400,
                  )),

              //background center
              Container(
                  margin: EdgeInsets.only(left: 250, top: 650),
                  child: Image.asset(
                    "assets/images/background/Icon material-pets.png",
                    width: 400,
                  )),

              //background bottom
              Container(
                  margin: EdgeInsets.only(left: 530),
                  child: Transform.rotate(
                    angle: -math.pi / 12.0,
                    //transform: Matrix4.rotationZ(math.pi),
                    child: Image.asset(
                      "assets/images/background/Icon material-pets.png",
                      width: 400,
                    ),
                  )),

              //border
              Container(

                margin: EdgeInsets.only(bottom: 80, left: 420, right: 420,top: 80),
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: black, width: 2),
                  borderRadius: BorderRadius.circular(25),
                ),


                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //Title
                    CustomTxt(
                      Title: 'Help your friend',
                      ColorTxt: aftergray,
                        FontSizeTxt: fontLastTitle,
                      FontWeightTxt: FontWeight.bold,
                    ),


                    //img
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 70, bottom: 50),
                      child: Image.asset(
                        "assets/images/icons/camera.png",
                        width: 100,
                      ),
                    ),

                    /*CustomDropMenuBtn.rest(
                            selectedValue: 'USA',
                            labelText: 'Country',
                            menuItems: ["USA","Egy"]),*/

                    //Category
                    CustomDropMenuBtn(BoxWidth: boxWidthTxtField),
                    SizedBox(height: 18),

                    //Detect your current location
                    SizedBox(height: 23),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 270),
                      child: Text(
                        "Detect your current location",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),



                    //Location
                    SizedBox(height: 18),
                    CustomTxtFormField(
                      labelText: 'Location',
                      BoxWidth: boxWidthTxtField,
                    ),

                    //Phone Number
                    SizedBox(height: 18),
                    CustomTxtFormField(
                      labelText: 'Phone Number',
                      BoxWidth: boxWidthTxtField,
                    ),

                    //Button Send
                    SizedBox(height: 15),
                    CustomBtn(TxtBtn: 'Send', TxtColrBtn: colrTextBtn, ColrBtn: brown,Page: HomeScreen()),

                    //Button Sign Up
                    SizedBox(height: 18),
                    CustomBtn(TxtBtn: 'Call', TxtColrBtn: brown, ColrBtn: colrTextBtn,Page: HomeScreen()),


                    //didn't have account
                    SizedBox(height: 30),
                    Container(
                      //color: Colors.red,
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [

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
