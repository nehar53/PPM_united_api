import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_onboarding_ui/screens/Homepage.dart';
import 'package:flutter_onboarding_ui/screens/booking.dart';
import 'package:flutter_onboarding_ui/screens/profilescreen.dart';
import 'package:http/http.dart' as http;

class TabsDemoScreen extends StatefulWidget {
  // TabsDemoScreen() : super();

  // final String title = "Flutter Bottom Tab demo";

  @override
  _TabsDemoScreenState createState() => _TabsDemoScreenState();
}

class _TabsDemoScreenState extends State<TabsDemoScreen> {
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
