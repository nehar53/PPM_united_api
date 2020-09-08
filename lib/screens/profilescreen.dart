import 'package:flutter/material.dart';

import 'package:flutter_onboarding_ui/Networking/service.dart';
import 'package:flutter_onboarding_ui/screens/OnboardinScreen.dart';

import 'package:provider/provider.dart';

import '../Networking/user_provider.dart';
import 'package:flutter/cupertino.dart';

class Profilescreen extends StatelessWidget {
  Profilescreen({this.phoneNumber1});

  final String phoneNumber1;

  @override
  Widget build(BuildContext context) {
    final userprovider = Provider.of<UserProvider>(context);
    Networking networking = Networking();
    return Scaffold(
      //  leading: IconButton(
      //    icon: Icon(Icons.menu),

      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    //  networking.otpsent(phoneNumber.toString(),
                    //  userprovider.phoneNumber,
                    "kmkmkm",

                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
            ListTile(
              // subtitle: Icon(Icons.person),
              title: Row(
                children: <Widget>[
                  Icon(Icons.help),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(" Help Center ")
                ],
              ),
              //Text("All Parties"),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.file_download),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(" Download UC Partner app ")
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.add_box),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(" About PPM Company ")
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.share),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(" Share PPm Company ")
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.get_app),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(" My Gift Cards ")
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.account_balance_wallet),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(" My Wallet ")
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.add_to_home_screen),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(" Rate PPM Company ")
                ],
              ),
              onTap: () {},
            ),
            Divider(
              height: 10.0,
              color: Colors.grey,
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.settings),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(" Settings ")
                ],
              ),
              onTap: () {},
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child:
                  /*Padding(
                        padding: const EdgeInsets.all(0),
                        child:*/
                  FlatButton(
                onPressed: () {
                  userprovider.signOut();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OnBoardingScreen()));
                },
                child: Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.black,

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
    );
  }
}
