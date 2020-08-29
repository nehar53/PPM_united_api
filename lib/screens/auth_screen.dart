import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_onboarding_ui/Networking/otp-verify.dart';
import 'package:flutter_onboarding_ui/Widget/Button.dart';
import '../constants.dart';

import 'otpScreen.dart';
import 'package:international_phone_input/international_phone_input.dart';

enum AuthMode { SignUp, Login }

class Auth_Screen extends StatefulWidget {
  @override
  _Auth_ScreenState createState() => _Auth_ScreenState();
}

class _Auth_ScreenState extends State<Auth_Screen> {
  String phone = '';
  void onPhoneNumberChange(
      String number, String internationalizedPhoneNumber, String isoCode) {
    setState(() {
      phone = number;
      print(phone);
    });
  }

  Networking networking = Networking();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            'Verify',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.only(top: 40),
              width: 300,
              height: 250,
              decoration: kContainerdecoration,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Your Phone!',
                      style: ktextStyle,
                    ),
                    Text(
                      'Phone Number',
                      style: ktextStyle,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: InternationalPhoneInput(
                          decoration:
                              InputDecoration(hintText: 'Enter Phone No'),
                          onPhoneNumberChange: onPhoneNumberChange,
                          initialPhoneNumber: phone,
                          initialSelection: 'US',
                          enabledCountries: ['+91'],
                          showCountryCodes: true),
                    ),
                    Center(
                      child: Button(
                        text: 'Continue',
                        onPressed: () async {
                          var response = await networking.otpsent(phone);
                          if (response == 200) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OtpScreen(
                                          phoneNumber: phone,
                                        )));
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Have an account already?'),
              SelectableText('Signin', onTap: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
