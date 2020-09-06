import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_onboarding_ui/Data_Handling/screen1_data.dart';
import 'package:flutter_onboarding_ui/Networking/otp-verify.dart';

import '../constants.dart';

class Profilescreen extends StatelessWidget {
  Profilescreen({this.phoneNumber1});

  final String phoneNumber1;

  @override
  Widget build(BuildContext context) {
    Networking network = Networking();

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
                Text(
                  '+91 $phoneNumber1',
                  style: TextStyle(color: Colors.black),
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

            // Divider(
            //   height: 10.0,
            //   color: Colors.grey,
            // ),
            /*   ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.list),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(" Purchase ")
                ],
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ListTile(
                        )));
              },
            ),*/
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
            /*  ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.list),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(" DashBoard ")
                ],
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => MyHomePage()));
              },
            ),*/
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
                onPressed: () async {
                  await network.otpsent(phoneNumber1);
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
