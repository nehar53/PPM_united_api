import 'dart:math';

import 'package:flutter/material.dart';

import 'package:flutter_onboarding_ui/screens/AuthScreen/auth_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<OnBoardingScreen> {
  int page = 0;
  PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  final pages = [
    Container(
        margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF08B3E5),
              Color(0xFF2AF598),
            ],
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/8.png',
                      height: 300,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Explore",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontFamily: 'SweetSansPro',
                        fontWeight: FontWeight.w600,
                        // height: 1.3,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Explore the services you require.\n"
                      "Get familiar with our pool of services",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'SweetSansPro',
                        // fontWeight: FontWeight.w500,
                        // height: 1.3,
                      ),
                    ),
                  ],
                ),
              ),
            ])),
    Container(
        //Second Page Starts from Here
        margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          //  shape: BoxShape.rectangle,
          color: Color(0xFFFBAA1A),
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [
              //Colors.(0xFF2AF598)[400],
              // Colors.(0xFF2AF598)[400],
              Color(0xFF2AF598),
              Color(0xFF08B3E5),
              //Colors.(0xFF2AF598)[400],
            ],
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                //  color: Color(0xFFFBAA1A),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/2.png',
                      height: 340,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Schedule",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontFamily: 'SweetSansPro',
                        fontWeight: FontWeight.w600,
                        // height: 1.3,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Select  the  time  slot, get your\n appointment booked."
                      "\nWe give the best price in market,\n we guarantee!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'SweetSansPro',
                        //fontWeight: FontWeight.w500,
                        // height: 1.3,
                      ),
                    ),
                  ],
                ),
              ),
            ])),
    Container(
        //Third Page Starts from Here
        margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          //  shape: BoxShape.rectangle,
          color: Color(0xFF5CBBEA),
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              //Colors.(0xFF2AF598)[400],
              // Colors.(0xFF2AF598)[400],

              Color(0xFF08B3E5),
              Color(0xFF2AF598),

              //Colors.(0xFF2AF598)[400],
            ],
          ),
        ),
        child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                //color: Color(0xFF5CBBEA),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/3.png',
                      height: 450,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Tracks",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontFamily: 'SweetSansPro',
                        fontWeight: FontWeight.w600,
                        // height: 1.3,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Get real time update of the service."
                      "\nProfessional crew and services",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'SweetSansPro',
                        //fontWeight: FontWeight.w500,
                        // height: 1.3,
                      ),
                    ),
                  ],
                ),
              ),
            ])),
    Container(
        //Fourth Page Starts from Here
        margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          //  shape: BoxShape.rectangle,
          color: Color(0xFFB0D236),
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF2AF598),
              Color(0xFF08B3E5),
              //Colors.(0xFF2AF598)[400],
            ],
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                // color: Color(0xFFB0D236),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/2.png', //change require in image;;;;;;;;;;;;;
                      height: 300,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Get Your Job Done',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontFamily: 'SweetSansPro',
                        fontWeight: FontWeight.w600,
                        // height: 1.3,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Get satisfied with your requirement fulfilled",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'SweetSansPro',
                        // fontWeight: FontWeight.w500,
                        // height: 1.3,
                      ),
                    ),
                  ],
                ),
              ),
            ])),
  ];

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((page ?? 0) - index).abs(),
      ),
    );
    double zoom = 1.0 + (2.0 - 1.0) * selectedness;
    return new Container(
      width: 25.0,
      // color: Colors.black,
      child: new Center(
        child: new Material(
          color: Colors.white,
          type: MaterialType.circle,
          child: new Container(
            width: 8.0 * zoom,
            height: 8.0 * zoom,
            // color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFECECEC),
        body: Stack(
          children: <Widget>[
            PageView(
              onPageChanged: pageChangeCallback,
              children: pages,
              controller: pageController,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Expanded(child: SizedBox()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(pages.length, _buildDot),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Auth_Screen()));
                  },
                  child: Text(
                    "Skip",
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
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: FlatButton(
                  onPressed: () {
                    if (pageController.hasClients) {
                      pageController.animateToPage(page + 1,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut);
                    }
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontFamily: 'SweetSansPro',
                      fontWeight: FontWeight.w600,
                      // height: 1.3,
                    ),
                  ),
                  color: Colors.white.withOpacity(0.01),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  pageChangeCallback(int lpage) {
    setState(() {
      page = lpage;
    });
  }
}
