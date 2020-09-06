import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_onboarding_ui/screens/slider.dart';

import '../constants.dart';
import 'Mybutton.dart';

class MyHomePage extends StatefulWidget {
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
  final String text3 = 'Cleaning \nServices';
  final String text4 = 'Interior\n Designing';
  final String text5 = 'Pest\n Control';
  final String text6 = 'Disinfection';
  final String text7 = 'Plumbing';
  final String text8 = 'Painting';
  final String text9 = 'A/C Services & Repair';
  final String text10 = 'Home \nAutomation';
  final String text11 = 'Computer &\n Laptop ';
  final String text12 = 'Event\nPlanner';
  final String text13 = 'Finance &Tax \nConsultant';
  final String text14 = 'Tech Services';
  final String text15 = 'Car\n Cleaning';
  final String text16 = 'Construction\nServices';
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
                      children: <Widget>[
                        Stack(
                          alignment: AlignmentDirectional.topCenter,
                          overflow: Overflow.visible,
                          children: <Widget>[
                            _backBgCover(),

                            _greetings(),
                            _moodsHolder(),
                            // _searchField()
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 8, right: 25, left: 25, bottom: 8),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: GestureDetector(
                                  // FIRST BUTTON
                                  onTap: () {},
                                  child: MyButton(
                                    image: image1,
                                    text: text1,
                                  ),
                                  /* onTap: _letsPress1,
                                  child: buttonPressed1
                                      ? ButtonTapped(
                                          image: image1,
                                          text: text1,
                                        )
                                      : MyButton(
                                          image: image1,
                                          text: text1,
                                        ),*/
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  // SECOND BUTTON
                                  onTap: () {},
                                  child: MyButton(
                                    image: image2,
                                    text: text2,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                    // THIRD BUTTON
                                    onTap: () {},
                                    child: MyButton(
                                      image: image3,
                                      text: text3,
                                    )),
                              ),
                              Expanded(
                                child: GestureDetector(
                                    // FOURTH BUTTON
                                    onTap: () {},
                                    child: MyButton(
                                      image: image4,
                                      text: text4,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 0, right: 25, left: 25, bottom: 8),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: GestureDetector(
                                    // FIRST BUTTON
                                    onTap: () {},
                                    child:
                                        MyButton(image: image5, text: text5)),
                              ),
                              Expanded(
                                child: GestureDetector(
                                    // SECOND BUTTON
                                    onTap: () {},
                                    child:
                                        MyButton(image: image6, text: text6)),
                              ),
                              Expanded(
                                child: GestureDetector(
                                    // THIRD BUTTON
                                    onTap: () {},
                                    child:
                                        MyButton(image: image7, text: text7)),
                              ),
                              Expanded(
                                child: GestureDetector(
                                    // FOURTH BUTTON
                                    onTap: () {},
                                    child:
                                        MyButton(image: image8, text: text8)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 0, right: 25, left: 25, bottom: 8),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: GestureDetector(
                                    // FIRST BUTTON
                                    onTap: () {},
                                    child:
                                        MyButton(image: image9, text: text9)),
                              ),
                              Expanded(
                                child: GestureDetector(
                                    // SECOND BUTTON
                                    onTap: () {},
                                    child:
                                        MyButton(image: image10, text: text10)),
                              ),
                              Expanded(
                                child: GestureDetector(
                                    // THIRD BUTTON
                                    onTap: () {},
                                    child:
                                        MyButton(image: image11, text: text11)),
                              ),
                              Expanded(
                                child: GestureDetector(
                                    // FOURTH BUTTON
                                    onTap: () {},
                                    child:
                                        MyButton(image: image12, text: text12)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 0, right: 25, left: 25, bottom: 8),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: GestureDetector(
                                    // FIRST BUTTON
                                    onTap: () {},
                                    child: MyButton(
                                      image: image13,
                                      text: text13,
                                    )),
                              ),
                              Expanded(
                                child: GestureDetector(
                                    // SECOND BUTTON
                                    onTap: () {},
                                    child:
                                        MyButton(image: image14, text: text14)),
                              ),
                              Expanded(
                                child: GestureDetector(
                                    // THIRD BUTTON
                                    onTap: () {},
                                    child:
                                        MyButton(image: image15, text: text15)),
                              ),
                              Expanded(
                                child: GestureDetector(
                                    // FOURTH BUTTON
                                    onTap: () {},
                                    child:
                                        MyButton(image: image16, text: text16)),
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
                      ],
                    ),
                  ),
                )));
  }
}
