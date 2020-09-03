import 'package:flutter/material.dart';

const Color kbgcolor = Color(0xEEDAE1E4);

const kContainerdecoration = BoxDecoration(
  shape: BoxShape.rectangle,

  // color: Colors.white,

  borderRadius: BorderRadius.all((Radius.circular(20))),
  gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomCenter,
      colors: [
        //Color(0xFFE7F0FF),
        Color(0xFF08B3E5),
        Color(0xFF2AF598),
      ],
      stops: [
        0,
        0.6,
      ]),
);
/*BoxDecoration(boxShadow: [
  BoxShadow(
      color: Colors.blueGrey,
      blurRadius: 40,
      spreadRadius: 10,
      offset: Offset(2.0, 2.0))
], color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20)));*/

const ktextStyle =
    TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white);
const kContainerdecoration1 = BoxDecoration(
  shape: BoxShape.rectangle,

  // color: Colors.white,

  borderRadius: BorderRadius.all((Radius.circular(20))),
  gradient: LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        //Color(0xFFE7F0FF),

        Color(0xFF2AF598),
        Color(0xFF08B3E5),
      ],
      stops: [
        0.6,
        1,
      ]),
);
