import 'package:flutter/material.dart';

class TextFieldWithCustomised extends StatelessWidget {
  final String hint;
  final String errorText;
  final Function(String) onChanged;
  final bool obscureText;

  TextFieldWithCustomised(
      {this.hint, this.errorText, this.onChanged, this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325.0,
      child: TextField(
        decoration: new InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1),
            ),
            hintText: hint,
            hintStyle: getStyle(),
            errorText: errorText,
            errorStyle: TextStyle(fontSize: 12.0)),
        onChanged: onChanged,
        obscureText: obscureText,
        style: getStyle(),
      ),
      color: Colors.grey.shade800,
    );
  }

  TextStyle getStyle() {
    return TextStyle(
        fontFamily: "Poppins",
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: Colors.white);
  }
}
