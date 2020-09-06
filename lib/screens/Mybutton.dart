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
      padding: EdgeInsets.all(8),
      child: Container(
        height: 80,
        width: 80,
        // padding: EdgeInsets.all(2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              image,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
            // Icon(icon, size: 70, color: Colors.greenAccent),
            // SizedBox(height: 5),
            Text(
              text,
              style: TextStyle(
                fontSize: 10.0,
                // fontWeight: FontWeight.w300,
                fontFamily: 'BeldaNorm',
              ),
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
          color: Color(0xFFE7F0FF),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                offset: Offset(1, 3),
                blurRadius: 6.0,
                spreadRadius: 1.0),
            BoxShadow(
                color: Colors.grey[50],
                offset: Offset(-4.0, -4.0),
                blurRadius: 6.0,
                spreadRadius: 1.0),
          ],
        ),
      ),
    );
  }
}
