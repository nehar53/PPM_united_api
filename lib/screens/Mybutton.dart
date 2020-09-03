import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  var image;
  // String text;
  final String text;
  MyButton({
    Key key,
    this.image,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        height: 100,
        width: 100,
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              image,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
            // Icon(icon, size: 50, color: Colors.greenAccent),
            // SizedBox(height: 5),
            Text(
              text,
              style: TextStyle(
                // color: Colors.grey,
                fontSize: 10.0,
                fontFamily: 'BeldaNorm',
                //fontWeight: FontWeight.w600,
                // height: 1.3,
              ),

              // style: OnBoardingScreen.style,
            ),
          ],
        ),
        //FlatButton.icon(onPressed: () {}, icon: icon, label: Text(text)),
        /*Icon(
          icon,
          //text,
          size: 40,
          color: Colors.greenAccent,
        ),*/
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[100],
                offset: Offset(0, 3),
                blurRadius: 15.0,
                spreadRadius: 1.0),
            BoxShadow(
                color: Colors.white,
                offset: Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
          ],
          /* gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.grey,
                  Colors.grey,
                  Colors.grey,
                  Colors.grey,
                ],
                stops: [
                  0.1,
                  0.3,
                  0.8,
                  1
                ])*/
        ),
      ),
    );
  }
}
