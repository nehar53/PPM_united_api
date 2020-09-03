import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_ui/Networking/otp-verify.dart';
import 'package:flutter_onboarding_ui/screens/Homepage.dart';
import 'package:passcode/passcode.dart';

import '../Widget/Button.dart';

import '../constants.dart';
import 'Navbar.dart';

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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20),
                margin: EdgeInsets.only(top: 40),
                width: 350,
                height: 340,
                decoration: kContainerdecoration1,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'OTP has been sent to you on \nyour mobile phone.Please enter it below',
                        style: ktextStyle,
                      ),

                      // Text(
                      //  '+91 $phoneNumber',
                      //  style: ktextStyle,
                      // ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child:
                            /* TextField(
                          onChanged: (value) {
                            otp = value;
                            print(otp);
                          },*/
                            //decoration: InputDecoration(
                            //   hintText: 'Enter Otp You received'),
                            PasscodeTextField(
                          onTextChanged: (value) {
                            otp = value;
                            print(otp);
                          },
                          totalCharacters: 6,
                          // borderColor: Colors.,
                          backgroundColor: kbgcolor,
                          passcodeType: PasscodeType.number,
                        ),
                      ),

                      SizedBox(
                        height: 70,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child:
                            /*Padding(
                        padding: const EdgeInsets.all(0),
                        child:*/
                            FlatButton(
                          onPressed: () async {
                            // await network.otpVerification(phoneNumber, otp);

                            //  var response =
                            await network.otpVerification(phoneNumber, otp);
                            //  if (response == 202) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        TabContainerDefault()));
                            //response= network.login(phoneNumber, token);
                            // phoneNumber

                            //  }
                          },
                          child: Text(
                            "VERIFY",
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
            ],
          ),
        ));
  }
}
