import 'package:flutter/material.dart';
import 'package:flutter_onboarding_ui/screens/Homepage.dart';
import 'package:flutter_onboarding_ui/screens/Navbar.dart';
import 'package:flutter_onboarding_ui/screens/OnboardingScreen.dart';
import 'package:flutter_onboarding_ui/screens/auth_screen.dart';
import 'package:flutter_onboarding_ui/screens/otpScreen.dart';
//import 'package:flutter_onboarding_ui/loginpage.dart';
//import 'package:flutter_onboarding_ui/provider/user_provider.dart';

void main() {
  // SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
      theme: ThemeData(
          primarySwatch: Colors.green, primaryColor: Colors.greenAccent),
    );
  }
}
/*void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData(
          primarySwatch: Colors.green, primaryColor: Colors.greenAccent),
    );
  }
}*/
