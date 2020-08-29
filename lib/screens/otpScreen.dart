import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_ui/Networking/otp-verify.dart';
import 'package:flutter_onboarding_ui/screens/Homepage.dart';

import '../Widget/Button.dart';

import '../constants.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({this.phoneNumber});

  final String phoneNumber;
  String otp;
  @override
  Widget build(BuildContext context) {
    Networking network = Networking();

    return Scaffold(
        backgroundColor: kbgcolor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Seri',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Container(
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
                        'OTP Verification',
                        style: ktextStyle,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Enter the OTP you received to',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '+91 $phoneNumber',
                        style: ktextStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextField(
                          onChanged: (value) {
                            otp = value;
                            print(otp);
                          },
                          decoration: InputDecoration(
                              hintText: 'Enter Otp You received'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Button(
                text: 'Continue',
                onPressed: () async {
                  await network.otpVerification(phoneNumber, otp);
                },
              )
            ],
          ),
        ));
  }
}
