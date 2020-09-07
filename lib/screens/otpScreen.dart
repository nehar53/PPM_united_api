import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_ui/Networking/otp-verify.dart';
import 'package:flutter_onboarding_ui/Networking/user_provider.dart';

import 'package:passcode/passcode.dart';
import 'package:provider/provider.dart';

import '../Widget/constants.dart';
import 'NavigationBar.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({this.phoneNumber});

  final String phoneNumber;
  String otp;
  Positioned _greetings() {
    return Positioned(
      left: 20,
      bottom: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Hi Johnmiller',
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'BeldaNorm',
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Welcome to PPM United',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Container _backBgCover() {
    return Container(
      height: 135.0,
      decoration: BoxDecoration(
        gradient: purpleGradient,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
    );
  }

  Positioned _moodsHolder() {
    return Positioned(
      bottom: -40,
      child: Container(
        height: 65.0,
        width: 312,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              /* BoxShadow(
                color: Colors.black12,
                spreadRadius: 5.5,
                blurRadius: 5.5,
              )*/
            ]),
        child: TextField(
          decoration: InputDecoration(
            hintText: '',
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            border: InputBorder.none,
            icon: Icon(Icons.search, size: 30, color: Colors.black),
            suffixIcon: SizedBox(
              width: 50,
              child: Icon(Icons.list, size: 30, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Networking network = Networking();
    // final user = Provider.of<UserProvider>(context);

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
                                    builder: (context) => TabsDemoScreen()));
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
