import 'package:flutter/material.dart';
import 'package:flutter_onboarding_ui/Networking/user_provider.dart';
import 'package:flutter_onboarding_ui/screens/OnboardinScreen.dart';
import 'package:flutter_onboarding_ui/screens/Homepage.dart';
import 'package:flutter_onboarding_ui/screens/NavigationBar.dart';

//import 'package:flutter_onboarding_ui/screens/OnboardingScreen.dart';
import 'package:flutter_onboarding_ui/screens/auth_screen.dart';

import 'package:provider/provider.dart';

void main() {
  // SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<UserProvider>(
            create: (_) => UserProvider(),
            lazy: false,
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Auth_Screen(),
          theme: ThemeData(
              primarySwatch: Colors.green, primaryColor: Colors.greenAccent),
        ));
  }
}

/*class Provider1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userprovider = Provider.of<UserProvider>(context);

    if (userprovider.status == Status.Unauthenticated) {
      return OnBoardingScreen();
    } else if (userprovider.status == Status.Authenticated) {
      return MyHomePage();
    } else if (userprovider.status == Status.Authenticating) {
      return Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }
  }
}*/
