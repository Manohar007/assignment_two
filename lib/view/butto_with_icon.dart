import 'package:flutter/material.dart';

class ButtonWithIcon extends StatelessWidget {
  final VoidCallback onClicked;
  final Image icon;
  final String data;

  ButtonWithIcon({this.onClicked, this.icon, this.data});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: onClicked,
      child: Row(
        children: [
          Container(
            child: icon,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            data,
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
                color: Colors.white),
          ),
        ],
      ),
      color: Colors.transparent,
    );
  }
}
