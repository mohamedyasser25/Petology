import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
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

class RequestScreen extends StatefulWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
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


              //background center
              Container(
                  margin: EdgeInsets.only(left: 250,top: 650),
                  child: Image.asset(
                    "assets/images/background/Icon material-pets.png",
                    width: 400,
                  )),


              //background bottom left
              Container(
                  margin: EdgeInsets.only(left: 900,top: 1150),
                  child: Image.asset(
                    "assets/images/background/Icon material-pets.png",
                    width: 400,
                  )),

              //body
              Container(
                margin: EdgeInsets.only(
                    bottom: 100, left: 420, right: 420, top: 80),
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: black, width: 2),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Title
                    CustomTxt(
                      Title: 'Request',
                      ColorTxt: aftergray,
                      FontSizeTxt: fontLastTitle,
                      FontWeightTxt: FontWeight.bold,
                    ),

                    //img
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 20),
                      child: Image.asset(
                        "assets/images/MaskGroup1.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(height: 18),

                    //Name
                    SizedBox(height: 18),
                    CustomTxtFormField(
                      labelText: 'Name',
                      BoxWidth: boxWidthTxtField,
                    ),

                    //Category
                    SizedBox(height: 18),
                    CustomTxtFormField(
                      labelText: 'Category',
                      BoxWidth: boxWidthTxtField,
                    ),

                    //Year + Month
                    SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //Year
                        Container(
                            margin: EdgeInsets.only(left: 50),
                            child:
                            CustomDropMenuBtn(BoxWidth: boxWidthDropMenu)),
                        SizedBox(height: 18),

                        //Month
                        CustomDropMenuBtn(BoxWidth: boxWidthDropMenu),
                        SizedBox(height: 18),
                      ],
                    ),

                    //Size + Breed
                    SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //Size
                        Container(
                            margin: EdgeInsets.only(left: 50),
                            child:
                            CustomDropMenuBtn(BoxWidth: boxWidthDropMenu)),
                        SizedBox(height: 18),

                        //Breed
                        CustomDropMenuBtn(BoxWidth: boxWidthDropMenu),
                        SizedBox(height: 18),
                      ],
                    ),

                    //Gender + Age
                    SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //Gender
                        Container(
                            margin: EdgeInsets.only(left: 50),
                            child:
                            CustomDropMenuBtn(BoxWidth: boxWidthDropMenu)),
                        SizedBox(height: 18),

                        //Age
                        CustomDropMenuBtn(BoxWidth: boxWidthDropMenu),
                        SizedBox(height: 18),
                      ],
                    ),

                    //Hair Length + Care & Behavior
                    SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //Hair Length
                        Container(
                            margin: EdgeInsets.only(left: 50),
                            child:
                            CustomDropMenuBtn(BoxWidth: boxWidthDropMenu)),
                        SizedBox(height: 18),

                        //Care & Behavior
                        CustomDropMenuBtn(BoxWidth: boxWidthDropMenu),
                        SizedBox(height: 18),
                      ],
                    ),

                    //House Trained + Color
                    SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //House Trained
                        Container(
                            margin: EdgeInsets.only(left: 50),
                            child:
                            CustomDropMenuBtn(BoxWidth: boxWidthDropMenu)),
                        SizedBox(height: 18),

                        //Color
                        CustomTxtFormField(
                          BoxWidth: 200,
                          labelText: 'Color',
                        ),
                        SizedBox(height: 18),
                      ],
                    ),

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

                    //Description
                    SizedBox(height: 18),
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      elevation: 18,
                      //shadowColor: Colors.purple,
                      child: Container(
                        width: 500,
                        child: TextFormField(
                          maxLines: 5,
                          decoration: InputDecoration(
                              labelText: 'Description',
                              alignLabelWithHint: true,
                              labelStyle: TextStyle(color: gray),
                              helperStyle: TextStyle(color: gray),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                                  borderSide:
                                  BorderSide(color: transparent)),
                              disabledBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                                  borderSide:
                                  BorderSide(color: transparent)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                                  borderSide:
                                  BorderSide(color: transparent))),
                        ),
                      ),
                    ),

                    //Vaccinated
                    Padding(
                      padding: const EdgeInsets.only(top: 8, right: 350),
                      child: Text(
                        "Vaccinated (up to date)",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 18),

                    //Button Send
                    CustomBtn(TxtBtn: 'Send', TxtColrBtn: colrTextBtn,ColrBtn: brown,Page: HomeScreen()),

                    SizedBox(height: 40),


                  ],
                ),
              ),

              //footer
              Padding(
                padding: const EdgeInsets.only(top:1650),
                child: Footerr(),
              )

            ],

          ),
        ),
      ),

    );

  }
}


