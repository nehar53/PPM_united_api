import 'package:flutter/material.dart';
//import 'package:flutter_onboarding_ui/loginpage.dart';
//import 'package:flutter_onboarding_ui/provider/user_provider.dart';
import 'package:flutter_onboarding_ui/screens/Homepage.dart';
import 'package:flutter_onboarding_ui/screens/OnboardingScreen.dart';
import 'package:flutter_onboarding_ui/screens/auth_screen.dart';
import 'package:flutter_onboarding_ui/screens/otpScreen.dart';
import 'package:provider/provider.dart';

/*void main() {
  // SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: OnBoardingScreen(),
      // home: Onemore(),
    );
  }
}*/
/*void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserProvider>(
          create: (_) => UserProvider(),
          lazy: false,
        ),

//        ChangeNotifierProvider<SharedPrefs>(
//          create: (_) => SharedPrefs(),
//          lazy: false,
//        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ppm App',
        home: Scaffold(body: MyHomePage1()),
      ),
    );
  }
}

class MyHomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userprovider = Provider.of<UserProvider>(context);

    if (userprovider.status == Status.Unauthenticated) {
      return LoginPage();
    } else if (userprovider.status == Status.Authenticated) {
      return MyHomePage();
    } else if (userprovider.status == Status.Authenticating) {
      return Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }
  }
}*/
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Auth_Screen(),
      theme: ThemeData(
          primarySwatch: Colors.green, primaryColor: Colors.greenAccent),
    );
  }
}
