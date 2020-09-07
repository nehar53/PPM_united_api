import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_onboarding_ui/Networking/otp-verify.dart';

import '../Widget/constants.dart';

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
  /*Positioned _greetings() {
    return Positioned(
      //left: 20,

      top: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Verify your number',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Please enter your mobile number to recieve \na verification code.Carrier ratesmay apply ',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Te
        ],
      ),
    );
  }

  Positioned _greetings1() {
    return Positioned(
      //left: 20,

      top: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          InternationalPhoneInput(
            decoration: InputDecoration(hintText: ''),
            onPhoneNumberChange: onPhoneNumberChange,
            initialPhoneNumber: phone,
            // initialSelection: 'US',
            enabledCountries: ['+91'],
            // showCountryCodes: true
          ),
        ],
      ),
    );
  }

  Container _backBgCover() {
    return Container(
      height: 300.0,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: purpleGradient,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
    );
  }

  Container _backBgCover1() {
    return Container(
      height: 200.0,
      decoration: BoxDecoration(
        gradient: purpleGradient,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
    );
  }

  Positioned _moodsHolder() {
    return Positioned(
      // top: -60,
      // bottom: -40,
      top: -220,
      // right: 10,
      child: Image.asset(
        'assets/images/8.png',
        height: 300,
        width: 300,
        fit: BoxFit.cover,
      ),
    );
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7F0FF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // Text(
          //  'Verify',
          //  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          // ),
          Center(
            child: Container(
              padding: EdgeInsets.only(bottom: 4),
              // margin: EdgeInsets.all(20),
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
                      'Please enter your mobile number to recieve a verification code.         \nCarrier ratesmay apply',
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
          /*Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Have an account already?'),
              SelectableText('Signin', onTap: () {}),
            ],
          ),*/
        ],
      ),
    );
  }

  /* @override
  Widget build(BuildContext context) {
    return
        // appBar: AppBar(
        //  title: Text('PPM Unitd'),
        // ),
        MaterialApp(
            // title: _getCustomAppBar1(),

            home: Scaffold(
                // appBar: _getCustomAppBar(),
                backgroundColor: Color(0xFFE7F0FF),
                body: SafeArea(
                    // child: SingleChildScrollView(
                    // body: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Stack(
                        alignment: AlignmentDirectional.topCenter,
                        overflow: Overflow.visible,
                        children: <Widget>[
                          _backBgCover(),

                          _moodsHolder(),

                          _greetings(),
                          _greetings1()
                          // _backBgCover1()
                        ],
                      ),
                    ]))));
  }
}*/
}
