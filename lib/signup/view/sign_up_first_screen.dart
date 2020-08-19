import 'package:flutter/material.dart';
import 'package:flutter_assignment/signup/view/sign_up_second_page.dart';
import 'package:flutter_assignment/view/button_for_signup.dart';
import 'package:flutter_assignment/view/rounded_button.dart';

class SignupFirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SignupFirstPageState();
}

class SignupFirstPageState extends State<SignupFirstPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(""),
          leading:
              IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height - 80.0,
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    child: Image.asset("images/image000.png"),
                    height: 80.0,
                  ),
//                Row(children: [
                  Column(
                    children: [
                      Text(
                        "GAIN BACK CONTROL ",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "OF YOUR LIFE ",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
//                ],mainAxisAlignment: MainAxisAlignment.center,),
                  SizedBox(
                    height: 15.0,
                  ),
                  RoundedRectButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset("images/image002.png"),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "SIGN UP WITH FACEBOOK",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    backgroundColor: Colors.blueAccent,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),

                  RoundedRectButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset("images/image002.png"),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "SIGN UP WITH GOOGLE",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  RaisedButton(
                    child: Row(
                      children: [
                        Text(
                          "SIGN UP WITH EMAIL ADDRESS",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xFFF2D493),
                          ),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              SignupSecondPage()));
                    },
                    color: Colors.transparent,
                  ),
                  SizedBox(
                    height: 80.0,
                  ),

                  Container(
                    width: 325.0,
                    height: 1.0,
                    color: Color(0xFFF2D493),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                      width: 325.0,
                      child: Row(children: [
                        ButtonForSignup(
                          onClicked: () {
                            Navigator.pop(context);
                          },
                          text1: "Already have an account? ",
                          text2: "Sign in",
                        )
                      ], mainAxisAlignment: MainAxisAlignment.center)),
                  SizedBox(
                    height: 100.0,
                  ),
                ],
              )),
          scrollDirection: Axis.vertical,
        ));
  }
}
