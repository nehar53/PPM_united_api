

import 'package:flutter/material.dart';
import 'package:flutter_app/screens/HomeScreen/Homepage.dart';
import 'package:flutter_app/screens/booking.dart';
import 'package:flutter_app/screens/profilescreen.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';




class Navigation extends StatefulWidget {
  Navigation ({this.phoneNumber1});

  final String phoneNumber1;
  @override
  _MyHomePageState createState() => _MyHomePageState(phoneNumber1:phoneNumber1);
}

class _MyHomePageState extends State<Navigation> {
  _MyHomePageState ({this.phoneNumber1});

  final String phoneNumber1;
  int currentIndex=0;
  List<Widget> tabs = [
    MyHomePage(),
    BookingScreen(),
    MyHomePage(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
  }

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: tabs[currentIndex],
      ),floatingActionButton: FloatingActionButton(
    onPressed: () {Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => Profilescreen(phoneNumber3:phoneNumber1)));},
    child: Icon(Icons.account_box),
    backgroundColor: Colors.greenAccent,
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,

      bottomNavigationBar: BubbleBottomBar(
        hasNotch: true,
        fabLocation: BubbleBottomBarFabLocation.end,
        opacity: .2,
        currentIndex: currentIndex,
        onTap: changePage,
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(
                16)), //border radius doesn't work when the notch is enabled.
        elevation: 8,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.home,
                color: Colors.green,
              ),
              title: Text("Home")),

          BubbleBottomBarItem(
              backgroundColor: Colors.indigo,
              icon: Icon(
                Icons.dashboard,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.dashboard,
                color: Colors.indigo,
              ),
              title: Text("Bookings")),
          BubbleBottomBarItem(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.account_balance_wallet,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.account_balance_wallet,
                color: Colors.green,
              ),
              title: Text("Rewards"))
        ],
      ),
    );
  }
}
