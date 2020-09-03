import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_onboarding_ui/screens/slider.dart';

import 'ButtonTapped.dart';
import 'Mybutton.dart';
import 'lightclr.dart';

class MyHomePage extends StatefulWidget {
  //MyHomePage(Networking networking);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  List cardList = [Item1(), Item2(), Item3(), Item4()];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  // SET text HERE
  final String text1 = 'Electrical';
  final String text2 = 'Carpentery';
  final String text3 = 'Cleaning Services';
  final String text4 = 'Interior Designing';
  final String text5 = 'Pest Control';
  final String text6 = 'Disinfection';
  final String text7 = 'Plumbing';
  final String text8 = 'Painting';
  final String text9 = 'A/C Services & Repair';
  final String text10 = 'Home Automation';
  final String text11 = 'Computer & Laptop ';
  final String text12 = 'Event\nPlanner';
  final String text13 = 'Finance &Tax Consultant';
  final String text14 = 'Tech Services';
  final String text15 = 'Car Cleaning';
  final String text16 = 'Construction Services';
  //Set images HERE
  var image1 = 'assets/images/electrical.png';

  var image2 = 'assets/images/Carpentery.png';
  var image3 = 'assets/images/vaccum-cleaner.png';
  var image4 = 'assets/images/Interior.png';
  var image5 = 'assets/images/pest-control.png';

  var image6 = 'assets/images/disinfection.png';
  var image7 = 'assets/images/Tap.png';
  var image8 = 'assets/images/painting.png';
  var image9 = 'assets/images/AC.png';

  var image10 = 'assets/images/home-appliances.png';
  var image11 = 'assets/images/laptop.png';
  var image12 = 'assets/images/Event planner.png';
  var image13 = 'assets/images/finance-and-tax.png';

  var image14 = 'assets/images/tech-services.png';
  var image15 = 'assets/images/car-cleaning.png';
  var image16 = 'assets/images/construction.png';

  //

  //bool darkMode = false;

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
  bool buttonPressed13 = false;
  bool buttonPressed14 = false;
  bool buttonPressed15 = false;
  bool buttonPressed16 = false;

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
      buttonPressed13 = false;
      buttonPressed14 = false;
      buttonPressed15 = false;
      buttonPressed16 = false;
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
      buttonPressed13 = false;
      buttonPressed14 = false;
      buttonPressed15 = false;
      buttonPressed16 = false;
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
      buttonPressed13 = false;
      buttonPressed14 = false;
      buttonPressed15 = false;
      buttonPressed16 = false;
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
      buttonPressed13 = false;
      buttonPressed14 = false;
      buttonPressed15 = false;
      buttonPressed16 = false;
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
      buttonPressed13 = false;
      buttonPressed14 = false;
      buttonPressed15 = false;
      buttonPressed16 = false;
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
      buttonPressed13 = false;
      buttonPressed14 = false;
      buttonPressed15 = false;
      buttonPressed16 = false;
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
      buttonPressed13 = false;
      buttonPressed14 = false;
      buttonPressed15 = false;
      buttonPressed16 = false;
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
      buttonPressed13 = false;
      buttonPressed14 = false;
      buttonPressed15 = false;
      buttonPressed16 = false;
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
      buttonPressed13 = false;
      buttonPressed14 = false;
      buttonPressed15 = false;
      buttonPressed16 = false;
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
      buttonPressed13 = false;
      buttonPressed14 = false;
      buttonPressed15 = false;
      buttonPressed16 = false;
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
      buttonPressed13 = false;
      buttonPressed14 = false;
      buttonPressed15 = false;
      buttonPressed16 = false;
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
      buttonPressed13 = false;
      buttonPressed14 = false;
      buttonPressed15 = false;
      buttonPressed16 = false;
    });
  }

  void _letsPress13() {
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
      buttonPressed12 = false;
      buttonPressed13 = true;
      buttonPressed14 = false;
      buttonPressed15 = false;
      buttonPressed16 = false;
    });
  }

  void _letsPress14() {
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
      buttonPressed12 = false;
      buttonPressed13 = false;
      buttonPressed14 = true;
      buttonPressed15 = false;
      buttonPressed16 = false;
    });
  }

  void _letsPress15() {
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
      buttonPressed12 = false;
      buttonPressed13 = false;
      buttonPressed14 = false;
      buttonPressed15 = true;
      buttonPressed16 = false;
    });
  }

  void _letsPress16() {
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
      buttonPressed12 = false;
      buttonPressed13 = false;
      buttonPressed14 = false;
      buttonPressed15 = false;
      buttonPressed16 = true;
    });
  }

  Widget _searchField() {
    return Container(
      height: 55,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      width: 312,
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
          icon: Icon(Icons.search, size: 30, color: LightColor.grey),

          // hintStyle: TextStyles.body.subTitleColor,
          suffixIcon: SizedBox(
            width: 50,
            child: Icon(Icons.list, size: 30, color: LightColor.grey),
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
                  child: SingleChildScrollView(
                    // body: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          // alignment: Alignment.bottomCenter,
                          //  height: 100,
                          //  width:
                          height: 155,
                          width: 500,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,

                            // color: Colors.white,

                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(100),
                                bottomRight: Radius.circular(100)),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xFF08B3E5),
                                  Color(0xFF2AF598),
                                  Color(0xFFE7F0FF),
                                ],
                                stops: [
                                  0.1,
                                  0.8,
                                  0.1,
                                  // 0.1,
                                  // 0.8,
                                  // 1,
                                  // 0.8
                                ]),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Hi,JOHn Miller",
                                    // style: OnBoardingScreen.style,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                      // fontFamily: 'SweetSansPro',
                                      fontWeight: FontWeight.w600,
                                      // height: 1.3,
                                    ),
                                  ),
                                  /*  Image.asset(
                        'assets/images/Untitled-1.png',
                        height: 140,
                        width: 140,
                        fit: BoxFit.cover,
                      ),*/
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Welcome to PPM united",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontFamily: 'BeldaNorm',
                                      // fontWeight: FontWeight.w600,
                                      // height: 1.3,
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
                                height: 14,
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
                          padding: EdgeInsets.only(
                              top: 1, right: 2, left: 2, bottom: 1),
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
                        Padding(
                          padding: EdgeInsets.only(
                              top: 0, right: 2, left: 2, bottom: 1),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: GestureDetector(
                                    // FIRST BUTTON
                                    onTap: _letsPress5,
                                    child: buttonPressed5
                                        ? ButtonTapped(
                                            image: image5,
                                            text: text5,
                                          )
                                        : MyButton(image: image5, text: text5)),
                              ),
                              Expanded(
                                child: GestureDetector(
                                    // SECOND BUTTON
                                    onTap: _letsPress6,
                                    child: buttonPressed6
                                        ? ButtonTapped(
                                            image: image6, text: text6)
                                        : MyButton(image: image6, text: text6)),
                              ),
                              Expanded(
                                child: GestureDetector(
                                    // THIRD BUTTON
                                    onTap: _letsPress7,
                                    child: buttonPressed7
                                        ? ButtonTapped(
                                            image: image7, text: text7)
                                        : MyButton(image: image7, text: text7)),
                              ),
                              Expanded(
                                child: GestureDetector(
                                    // FOURTH BUTTON
                                    onTap: _letsPress8,
                                    child: buttonPressed8
                                        ? ButtonTapped(
                                            image: image8, text: text8)
                                        : MyButton(image: image8, text: text8)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 0, right: 2, left: 2, bottom: 1),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: GestureDetector(
                                    // FIRST BUTTON
                                    onTap: _letsPress9,
                                    child: buttonPressed5
                                        ? ButtonTapped(
                                            image: image9, text: text9)
                                        : MyButton(image: image9, text: text9)),
                              ),
                              Expanded(
                                child: GestureDetector(
                                    // SECOND BUTTON
                                    onTap: _letsPress10,
                                    child: buttonPressed10
                                        ? ButtonTapped(
                                            image: image10, text: text10)
                                        : MyButton(
                                            image: image10, text: text10)),
                              ),
                              Expanded(
                                child: GestureDetector(
                                    // THIRD BUTTON
                                    onTap: _letsPress11,
                                    child: buttonPressed10
                                        ? ButtonTapped(
                                            image: image11, text: text11)
                                        : MyButton(
                                            image: image11, text: text11)),
                              ),
                              Expanded(
                                child: GestureDetector(
                                    // FOURTH BUTTON
                                    onTap: _letsPress12,
                                    child: buttonPressed12
                                        ? ButtonTapped(
                                            image: image12, text: text12)
                                        : MyButton(
                                            image: image12, text: text12)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 0, right: 2, left: 2, bottom: 1),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: GestureDetector(
                                    // FIRST BUTTON
                                    onTap: _letsPress13,
                                    child: buttonPressed13
                                        ? ButtonTapped(
                                            image: image13,
                                            text: text13,
                                          )
                                        : MyButton(
                                            image: image13,
                                            text: text13,
                                          )),
                              ),
                              Expanded(
                                child: GestureDetector(
                                    // SECOND BUTTON
                                    onTap: _letsPress14,
                                    child: buttonPressed14
                                        ? ButtonTapped(
                                            image: image14, text: text14)
                                        : MyButton(
                                            image: image14, text: text14)),
                              ),
                              Expanded(
                                child: GestureDetector(
                                    // THIRD BUTTON
                                    onTap: _letsPress15,
                                    child: buttonPressed15
                                        ? ButtonTapped(
                                            image: image15, text: text15)
                                        : MyButton(
                                            image: image15, text: text15)),
                              ),
                              Expanded(
                                child: GestureDetector(
                                    // FOURTH BUTTON
                                    onTap: _letsPress16,
                                    child: buttonPressed16
                                        ? ButtonTapped(
                                            image: image16, text: text16)
                                        : MyButton(
                                            image: image16, text: text16)),
                              ),
                            ],
                          ),
                        ),

                        CarouselSlider(
                          height: 100.0,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          pauseAutoPlayOnTouch: Duration(seconds: 10),
                          aspectRatio: 2.0,
                          onPageChanged: (index) {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                          items: cardList.map((card) {
                            return Builder(builder: (BuildContext context) {
                              return Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.30,
                                width: MediaQuery.of(context).size.width,
                                child: Card(
                                  color: Colors.blueAccent,
                                  child: card,
                                ),
                              );
                            });
                          }).toList(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: map<Widget>(cardList, (index, url) {
                            return Container(
                              width: 10.0,
                              height: 10.0,
                              margin: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _currentIndex == index
                                    ? Colors.blueAccent
                                    : Colors.grey,
                              ),
                            );
                          }),
                        ), // CrouselSilder()
                      ],
                    ),
                  ),
                )));
  }
}
