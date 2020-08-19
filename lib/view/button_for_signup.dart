import 'package:flutter/material.dart';

class ButtonForSignup extends StatelessWidget {
  final VoidCallback onClicked;
  final String text1;
  final String text2;

  ButtonForSignup({this.onClicked, this.text1, this.text2});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: onClicked,
      color: Colors.transparent,
      child: Row(
        children: [
          Text(
            text1,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            text2,
            style: TextStyle(
                color: Color(0xFFF2D493), fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
