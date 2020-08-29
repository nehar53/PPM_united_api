import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({@required this.onPressed, this.text});

  final Function onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40))),
      onPressed: onPressed,
      color: Colors.greenAccent,
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
