import 'package:flutter/material.dart';
import 'package:hackathon_flutter_petology/view/screens/Authentication/Login/LoginScreen.dart';

import 'view/screens/Adaption/AdaptionHomeScreen.dart';
import 'view/screens/Adaption/AdaptionGeneralScreen.dart';
import 'view/screens/Adaption/AdaptionInfoScreen.dart';
import 'view/screens/Authentication/SignUp/SignUpScreen.dart';
import 'view/screens/ChooseDogsOrCats/ChooseDogsOrCatsScreen.dart';
import 'view/screens/Help/HelpFriendScreen.dart';
import 'view/screens/Home/HomeScreen.dart';
import 'view/screens/Request/RequestScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Petology',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
