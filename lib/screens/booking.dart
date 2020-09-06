import 'package:flutter/material.dart';
import 'package:flutter_onboarding_ui/screens/Homepage.dart';

class BookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: 'ONGOING'),
                Tab(
                  text: 'HISTORY',
                ),
              ],
            ),
            title: Text('My Bookings'),
          ),
          body: TabBarView(
            children: [
              FirstScreen(),
              SecondScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
              Container(
                //   color: Color(0xFFEF4935),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/del_1.png',
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "No active Projects",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26.0,
                        fontFamily: 'SweetSansPro',
                        fontWeight: FontWeight.w600,
                        // height: 1.3,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "You can start a new\n"
                      "project by placing a request now",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontFamily: 'SweetSansPro',
                        // fontWeight: FontWeight.w500,
                        // height: 1.3,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              'Book a Service',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                backgroundColor: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]))));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
              Container(
                //   color: Color(0xFFEF4935),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/del_2.png',
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Whoops, No projects",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26.0,
                        fontFamily: 'SweetSansPro',
                        fontWeight: FontWeight.w600,
                        // height: 1.3,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "You can start a new\n"
                      "project by placing a request now",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontFamily: 'SweetSansPro',
                        // fontWeight: FontWeight.w500,
                        // height: 1.3,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              'Book a Service',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                backgroundColor: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]))));
  }
}
