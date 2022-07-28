import 'package:flutter/material.dart';
import 'package:hackathon_flutter_petology/view/widgets/Text/CustomTxt.dart';

import '../../../constants.dart';
import '../../widgets/BackgroundApdation/BackgroundApdation.dart';
import '../../widgets/Buttons/CustomAppBarBtn.dart';
import '../../widgets/Buttons/CustomTxtBtn.dart';
import '../../widgets/Footer/Footerr.dart';
import '../Authentication/Login/LoginScreen.dart';
import '../Authentication/SignUp/SignUpScreen.dart';
import '../Home/HomeScreen.dart';
import '../Request/RequestScreen.dart';

class AdaptionHomeScreen extends StatefulWidget {
  const AdaptionHomeScreen({Key? key}) : super(key: key);

  @override
  State<AdaptionHomeScreen> createState() => _AdaptionHomeScreenState();
}

class _AdaptionHomeScreenState extends State<AdaptionHomeScreen> {
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
            Stack(
              children: [
                //pattern background
                Container(
                  height: 700,
                  //color: brown,
                  decoration: BoxDecoration(
                      image: new DecorationImage(
                          image: AssetImage(
                              "assets/images/background/Rectangle 11.png"),
                          fit: BoxFit.cover)),
                ),

                //bones background
                Container(
                  margin: EdgeInsets.only(top: 120),
                  height: 400,
                  //color: brown,
                  decoration: BoxDecoration(
                      image: new DecorationImage(
                          image: AssetImage(
                              "assets/images/background/background2.png"),
                          fit: BoxFit.contain)),
                ),

                //bowl background
                Container(
                  margin: EdgeInsets.only(top: 500),
                  height: 200,
                  //color: brown,
                  decoration: BoxDecoration(
                      image: new DecorationImage(
                          image: AssetImage(
                              "assets/images/299-removebg-preview.png"),
                          fit: BoxFit.contain)),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Container(
                color: Colors.white,
                width: double.infinity,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70, left: 70),
                      child: CustomTxt(
                          Title: "How you feed Your Dog?",
                          ColorTxt: aftergray,
                          FontSizeTxt: fontLastTitle,
                          FontWeightTxt: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 70),
                      child: CustomTxt(
                          Title:
                              "As a general rule, puppies and young dogs burn more calories, so they need a greater quantity \nof food that is higher in protein and fat. Older, less active dogs require fewer calories to remain healthy.",
                          ColorTxt: brown,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.normal),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 70),
                      child: CustomTxt(
                          Title:
                              "Richard H. Pitcairn, DVM, PhD, author of Dr. Pitcairn’s Complete Guide to Natural Health \n"
                                  "for Dogs and Cats, believes the most reliable approach is to feed what seems to be a reasonable\n amount and monitor his body weight.",
                          ColorTxt: brown,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.normal),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 70),
                      child: CustomTxt(
                          Title:
                              "You should be able to feel your pet’s ribs easily as you slide your hand over his sides,” \nPitcairn says. “If you can’t, he’s probably too heavy, so begin to feed a smaller quantity.",
                          ColorTxt: brown,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.normal),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 70),
                      child: CustomTxt(
                          Title:
                              "If you’re using a commercial pet food, beware of the “feeding guidelines” on the bag or box. \nIt lists different weights and the corresponding amount of food to feed your dog to maintain that weight, \nand should be used only as a rough guideline.",
                          ColorTxt: brown,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.normal),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 70),
                      child: CustomTxt(
                          Title:
                              "Many dogs are overweight because their families closely followed the directions on the label, \nwhich often indicates portion sizes that are too large. After all, \nthe sooner the bag is empty, the sooner you will need to buy more food.",
                          ColorTxt: brown,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.normal),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 70),
                      child: CustomTxt(
                          Title:
                              "Starting at the low end of the suggested guidelines and then monitoring your dog for hunger and \nbody condition is a good way to proceed.",
                          ColorTxt: brown,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.normal),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 70),
                      child: CustomTxt(
                          Title:
                              "Different Portions for Different Pooches",
                          ColorTxt: brown,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.normal),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 70),
                      child: CustomTxt(
                          Title:
                              "Though it may sound counterintuitive, as a general rule, large breed dogs require less food and \nsmall breed dogs require more food when expressed on a volume of food per pound of body weight. \nThe food requirements of individual dogs vary according to their health, level of activity, and age.",
                          ColorTxt: brown,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.normal),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 70),
                      child: CustomTxt(
                          Title:
                              "Here are some guidelines for portion sizes at different stages of your dog’s life:",
                          ColorTxt: brown,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.normal),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 70),
                      child: CustomTxt(
                          Title:
                              "Puppies: Puppies are typically introduced to solid food at three to four weeks of age and are completely \nweaned from their mother’s milk by eight weeks.",
                          ColorTxt: brown,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.normal),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 70),
                      child: CustomTxt(
                          Title:
                              "Puppies require a diet that is higher in protein and other nutrients to support normal growth and \ndevelopment. If you are feeding commercial pet food to your adopted puppy, select a brand \nthat is specially formulated for puppies.",
                          ColorTxt: brown,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.normal),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 70),
                      child: CustomTxt(
                          Title:
                              "Young puppies should be fed at least three times a day — morning, noon, and early evening — \nuntil their food requirements per pound of body weight begin to level off as they mature.",
                          ColorTxt: brown,
                          FontSizeTxt: fontLoginText,
                          FontWeightTxt: FontWeight.normal),
                    ),

                    SizedBox(height: 40,),
                    Footerr()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
