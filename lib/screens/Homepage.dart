import 'package:flutter/material.dart';

import 'ButtonTapped.dart';
import 'Mybutton.dart';
import 'lightclr.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // SET text HERE
  final String text1 = 'Electrical';
  final String text2 = 'Carpentary';
  final String text3 = 'Cleaning\nServices';
  final String text4 = 'Interior\nDesigning';
  final String text5 = 'Pest';
  final String text6 = 'Plumbing';
  final String text7 = 'Painting';
  final String text8 = 'Booking';
  final String text9 = 'Profile';
  final String text10 = 'Computer';
  final String text11 = 'dffdfdf';
  final String text12 = 'dffdfdf';
  //Set images HERE
  var image1 = 'assets/images/toolbox.png';

  var image2 = 'assets/images/6.png';
  var image3 = 'assets/images/builder.png';
  var image4 = 'assets/images/healthcare.png';
  var image5 = 'assets/images/hollywood.png';

  var image6 = 'assets/images/idea.png';
  var image7 = 'assets/images/kit.png';
  var image8 = 'assets/images/parasite.png';
  var image9 = 'assets/images/toolbox.png';

  var image10 = 'assets/images/idea.png';
  var image11 = 'assets/images/6.png';
  var image12 = 'assets/images/5.png';

  //

  bool darkMode = false;

  bool buttonPressed1 = false;
  bool buttonPressed2 = false;
  bool buttonPressed3 = false;
  bool buttonPressed4 = false;
  bool buttonPressed5 = false;
  bool buttonPressed6 = false;
  bool buttonPressed7 = false;
  bool buttonPressed8 = false;
  bool buttonPressed9 = false;
  bool buttonPressed10 = false;
  bool buttonPressed11 = false;
  bool buttonPressed12 = false;

  //_MyHomePageState(this.text);

  //var text;

  void _letsPress1() {
    setState(() {
      buttonPressed1 = true;
      buttonPressed2 = false;
      buttonPressed3 = false;
      buttonPressed4 = false;
      buttonPressed5 = false;
      buttonPressed6 = false;
      buttonPressed7 = false;
      buttonPressed8 = false;
      buttonPressed9 = false;
      buttonPressed10 = false;
      buttonPressed11 = false;
      buttonPressed12 = false;
    });
  }

  void _letsPress2() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = true;
      buttonPressed3 = false;
      buttonPressed4 = false;
      buttonPressed5 = false;
      buttonPressed6 = false;
      buttonPressed7 = false;
      buttonPressed8 = false;
      buttonPressed9 = false;
      buttonPressed10 = false;
      buttonPressed11 = false;
      buttonPressed12 = false;
    });
  }

  void _letsPress3() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = false;
      buttonPressed3 = true;
      buttonPressed4 = false;
      buttonPressed5 = false;
      buttonPressed6 = false;
      buttonPressed7 = false;
      buttonPressed8 = false;
      buttonPressed9 = false;
      buttonPressed10 = false;
      buttonPressed11 = false;
      buttonPressed12 = false;
    });
  }

  void _letsPress4() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = false;
      buttonPressed3 = false;
      buttonPressed4 = true;
      buttonPressed5 = false;
      buttonPressed6 = false;
      buttonPressed7 = false;
      buttonPressed8 = false;
      buttonPressed9 = false;
      buttonPressed10 = false;
      buttonPressed11 = false;
      buttonPressed12 = false;
    });
  }

  void _letsPress5() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = false;
      buttonPressed3 = false;
      buttonPressed4 = false;
      buttonPressed5 = true;
      buttonPressed6 = false;
      buttonPressed7 = false;
      buttonPressed8 = false;
      buttonPressed9 = false;
      buttonPressed10 = false;
      buttonPressed11 = false;
      buttonPressed12 = false;
    });
  }

  void _letsPress6() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = false;
      buttonPressed3 = false;
      buttonPressed4 = false;
      buttonPressed5 = false;
      buttonPressed6 = true;
      buttonPressed7 = false;
      buttonPressed8 = false;
      buttonPressed9 = false;
      buttonPressed10 = false;
      buttonPressed11 = false;
      buttonPressed12 = false;
    });
  }

  void _letsPress7() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = false;
      buttonPressed3 = false;
      buttonPressed4 = false;
      buttonPressed5 = false;
      buttonPressed6 = false;
      buttonPressed7 = true;
      buttonPressed8 = false;
      buttonPressed9 = false;
      buttonPressed10 = false;
      buttonPressed11 = false;
      buttonPressed12 = false;
    });
  }

  void _letsPress8() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = false;
      buttonPressed3 = false;
      buttonPressed4 = false;
      buttonPressed5 = false;
      buttonPressed6 = false;
      buttonPressed7 = false;
      buttonPressed8 = true;
      buttonPressed9 = false;
      buttonPressed10 = false;
      buttonPressed11 = false;
      buttonPressed12 = false;
    });
  }

  void _letsPress9() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = false;
      buttonPressed3 = false;
      buttonPressed4 = false;
      buttonPressed5 = false;
      buttonPressed6 = false;
      buttonPressed7 = false;
      buttonPressed8 = false;
      buttonPressed9 = true;
      buttonPressed10 = false;
      buttonPressed11 = false;
      buttonPressed12 = false;
    });
  }

  void _letsPress10() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = false;
      buttonPressed3 = false;
      buttonPressed4 = false;
      buttonPressed5 = false;
      buttonPressed6 = false;
      buttonPressed7 = false;
      buttonPressed8 = false;
      buttonPressed9 = false;
      buttonPressed10 = true;
      buttonPressed11 = false;
      buttonPressed12 = false;
    });
  }

  void _letsPress11() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = false;
      buttonPressed3 = false;
      buttonPressed4 = false;
      buttonPressed5 = false;
      buttonPressed6 = false;
      buttonPressed7 = false;
      buttonPressed8 = false;
      buttonPressed9 = false;
      buttonPressed10 = false;
      buttonPressed11 = true;
      buttonPressed12 = false;
    });
  }

  void _letsPress12() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = false;
      buttonPressed3 = false;
      buttonPressed4 = false;
      buttonPressed5 = false;
      buttonPressed6 = false;
      buttonPressed7 = false;
      buttonPressed8 = false;
      buttonPressed9 = false;
      buttonPressed10 = false;
      buttonPressed11 = false;
      buttonPressed12 = true;
    });
  }

  Widget _searchField() {
    return Container(
      height: 55,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(13)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: LightColor.grey.withOpacity(.3),
            blurRadius: 15,
            offset: Offset(5, 5),
          )
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          border: InputBorder.none,
          icon: Icon(Icons.search, color: LightColor.black),

          // hintStyle: TextStyles.body.subTitleColor,
          suffixIcon: SizedBox(
            width: 50,
            child: Icon(Icons.list, color: LightColor.black),
            // Icon(Icons.search, color: LightColor.purple)
            //.alignCenter
            // .ripple(() {}, borderRadius: BorderRadius.circular(13))
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //  title: Text('PPM Unitd'),
      // ),
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              // alignment: Alignment.bottomCenter,
              //  height: 100,
              //  width:
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                // color: Colors.white,

                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(90),
                    bottomRight: Radius.circular(90)),
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topRight,
                    colors: [
                      Colors.grey[300],
                      Colors.greenAccent,
                      Colors.greenAccent,
                      Color(0xFF08B3E5),
                      Color(0xFF08B3E5),
                      Colors.greenAccent,
                    ],
                    stops: [
                      0.1,
                      0.2,
                      0.1,
                      0.8,
                      1,
                      0.1
                    ]),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Hi,JOHn Miller",
                        // style: OnBoardingScreen.style,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          // fontFamily: 'SweetSansPro',
                          fontWeight: FontWeight.w600,
                          // height: 1.3,
                        ),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.account_box,
                            size: 40,
                            color: Colors.white,
                          ),
                          onPressed: () {})
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Welcome to PPM united",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          //fontFamily: 'BorgiaPro',
                          // fontWeight: FontWeight.w600,
                          height: 1.3,
                        ),
                      ),
                    ],
                  ),
                  /* Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[],
                  ),*/

                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    // alignment: Alignment.bottomCenter,
                    //  height: 100,
                    // width: 1,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      // color: Colors.white,

                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[_searchField()],
                    ),
                  ),
                  //  _getCustomAppBar1(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 1, right: 2, left: 2, bottom: 1),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      // FIRST BUTTON

                      onTap: _letsPress1,
                      child: buttonPressed1
                          ? ButtonTapped(
                              image: image1,
                              text: text1,
                            )
                          : MyButton(
                              image: image1,
                              text: text1,
                            ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      // SECOND BUTTON
                      onTap: _letsPress2,
                      child: buttonPressed2
                          ? ButtonTapped(
                              image: image2,
                              text: text2,
                            )
                          : MyButton(
                              image: image2,
                              text: text2,
                            ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                        // THIRD BUTTON
                        onTap: _letsPress3,
                        child: buttonPressed3
                            ? ButtonTapped(
                                image: image3,
                                text: text3,
                              )
                            : MyButton(
                                image: image3,
                                text: text3,
                              )),
                  ),
                  Expanded(
                    child: GestureDetector(
                        // FOURTH BUTTON
                        onTap: _letsPress4,
                        child: buttonPressed4
                            ? ButtonTapped(
                                image: image4,
                                text: text4,
                              )
                            : MyButton(
                                image: image4,
                                text: text4,
                              )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, right: 2, left: 2, bottom: 1),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                        // FIRST BUTTON
                        onTap: _letsPress9,
                        child: buttonPressed9
                            ? ButtonTapped(
                                image: image9,
                                text: text5,
                              )
                            : MyButton(image: image9, text: text5)),
                  ),
                  Expanded(
                    child: GestureDetector(
                        // SECOND BUTTON
                        onTap: _letsPress10,
                        child: buttonPressed10
                            ? ButtonTapped(image: image10, text: text6)
                            : MyButton(image: image10, text: text6)),
                  ),
                  Expanded(
                    child: GestureDetector(
                        // THIRD BUTTON
                        onTap: _letsPress11,
                        child: buttonPressed11
                            ? ButtonTapped(image: image11, text: text7)
                            : MyButton(image: image11, text: text7)),
                  ),
                  Expanded(
                    child: GestureDetector(
                        // FOURTH BUTTON
                        onTap: _letsPress12,
                        child: buttonPressed12
                            ? ButtonTapped(image: image12, text: text8)
                            : MyButton(image: image12, text: text8)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, right: 2, left: 2, bottom: 1),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                        // FIRST BUTTON
                        onTap: _letsPress5,
                        child: buttonPressed5
                            ? ButtonTapped(image: image5, text: text4)
                            : MyButton(image: image5, text: text4)),
                  ),
                  Expanded(
                    child: GestureDetector(
                        // SECOND BUTTON
                        onTap: _letsPress6,
                        child: buttonPressed6
                            ? ButtonTapped(image: image6, text: text9)
                            : MyButton(image: image6, text: text9)),
                  ),
                  Expanded(
                    child: GestureDetector(
                        // THIRD BUTTON
                        onTap: _letsPress7,
                        child: buttonPressed7
                            ? ButtonTapped(image: image7, text: text12)
                            : MyButton(image: image7, text: text12)),
                  ),
                  Expanded(
                    child: GestureDetector(
                        // FOURTH BUTTON
                        onTap: _letsPress8,
                        child: buttonPressed8
                            ? ButtonTapped(image: image8, text: text11)
                            : MyButton(image: image8, text: text11)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
