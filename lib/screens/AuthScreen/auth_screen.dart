import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_onboarding_ui/Networking/service.dart';

import 'package:flutter_onboarding_ui/constants.dart';

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
      backgroundColor: Color(0xFFE7F0FF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: Container(
              padding: EdgeInsets.only(bottom: 4),
              width: 300,
              height: 350,
              decoration: kContainerdecoration,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Verify your number',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Please enter your mobile number to recieve a verification code.\nCarrier ratesmay apply',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: InternationalPhoneInput(
                          decoration: InputDecoration(hintText: ''),
                          onPhoneNumberChange: onPhoneNumberChange,
                          initialPhoneNumber: phone,
                          initialSelection: 'US',
                          enabledCountries: ['+91'],
                          showCountryCodes: true),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child:
                          /*Padding(
                        padding: const EdgeInsets.all(0),
                        child:*/
                          RaisedButton(
                        onPressed: () async {
                          //  userprovider.setUserToken();

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
                        child: Text(
                          "Submit",
                          style: TextStyle(
                            color: Colors.white,

                            fontSize: 20.0,
                            fontFamily: 'SweetSansPro',
                            fontWeight: FontWeight.w500,
                            // height: 1.3,
                          ),
                        ),
                        color: Colors.white.withOpacity(0.01),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
