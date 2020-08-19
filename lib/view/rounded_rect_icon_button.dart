import 'package:flutter/material.dart';

class RoundedRectIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Color backgroundColor;

  RoundedRectIconButton({this.onPressed, this.child, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: RaisedButton(
          onPressed: onPressed,
          child: child,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
          color: backgroundColor),
      width: 325.0,
      height: 42.0,
    ); //        color: ),width: 325.0,height: 42.0,);//
  }
}
