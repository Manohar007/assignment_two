import 'package:flutter/material.dart';
import 'package:flutter_assignment/login/bloc/bloc_login.dart';
import 'package:flutter_assignment/signup/view/sign_up_first_screen.dart';
import 'package:flutter_assignment/view/butto_with_icon.dart';
import 'package:flutter_assignment/view/button_for_signup.dart';
import 'package:flutter_assignment/view/rounded_button.dart';
import 'package:flutter_assignment/view/textfield_with_customised.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  Widget getEmailTextField(loginbloc) {
    return StreamBuilder(
        stream: loginbloc.email,
        builder: (context, snapshot) {
          return TextFieldWithCustomised(
            hint: "Username or Email Address",
            errorText: snapshot.error,
            onChanged: loginbloc.changeEmail,
            obscureText: false,
          );
        });
  }

  Widget getPasswordTextField(loginbloc) {
    return StreamBuilder(
        stream: loginbloc.password,
        builder: (context, snapshot) {
          return TextFieldWithCustomised(
            hint: "Password",
            errorText: snapshot.error,
            onChanged: loginbloc.changePassword,
            obscureText: true,
          );
        });
  }

  Widget getLoginButton(loginbloc) {
    return StreamBuilder(
        stream: loginbloc.submitValid,
        builder: (context, snapshot) {
          return RoundedRectButton(
            onPressed: () {
              if (snapshot.error) {
              } else {}
            },
            child: Text(
              "LOG IN",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            backgroundColor: Color(0xFFF2D493),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final loginbloc = LoginBloc();
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
                  getEmailTextField(loginbloc),
                  SizedBox(
                    height: 15.0,
                  ),
                  getPasswordTextField(loginbloc),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RaisedButton(
                          onPressed: () {},
                          child: Text(
                            "forgotten password?",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.transparent,
                        )
                      ],
                    ),
                    padding: EdgeInsets.only(right: 10.0),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  getLoginButton(loginbloc),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                      width: 325.0,
                      child: Row(
                        children: [
                          ButtonWithIcon(
                            onClicked: () {},
                            data: "Continue with Facebook",
                            icon: Image.asset("images/image002.png"),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      )),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                      width: 325.0,
                      child: Row(
                        children: [
                          ButtonWithIcon(
                            onClicked: () {},
                            data: "Continue with Google",
                            icon: Image.asset("images/image003.png"),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      )),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    width: 325.0,
                    height: 1.0,
                    color: Color(0xFFF2D493),
                  ),
                  Container(
                      width: 325.0,
                      child: Row(children: [
                        ButtonForSignup(
                          onClicked: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    SignupFirstPage()));
                          },
                          text1: "Don't have an account? ",
                          text2: "Sign up",
                        )
                      ], mainAxisAlignment: MainAxisAlignment.center)),
                ],
              )),
          scrollDirection: Axis.vertical,
        ));
  }
}
