import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_onboarding_ui/screens/HomeScreen/Homepage.dart';
import 'package:flutter_onboarding_ui/screens/booking.dart';

import 'package:flutter_onboarding_ui/screens/profilescreen.dart';

class Navigation extends StatefulWidget {
  @override
  _Navigation_Screen createState() => _Navigation_Screen();
}

class _Navigation_Screen extends State<Navigation> {
  int currentTabIndex = 0;
  List<Widget> tabs = [
    MyHomePage(),
    BookingScreen(),
    MyHomePage(),
    MyHomePage(),
    Profilescreen()
  ];

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: tabs[currentTabIndex]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: currentTabIndex,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
              size: 30,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
              color: Colors.black,
              size: 30,
            ),
            title: Text(
              "Bookings",
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.black,
              size: 30,
            ),
            title: Text(
              "UC Safe",
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet,
              color: Colors.black,
              size: 30,
            ),
            title: Text(
              "Rewards",
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
              size: 30,
            ),
            title: Text(
              "Profile",
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
