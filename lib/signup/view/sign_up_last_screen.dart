import 'package:flutter/material.dart';
import 'package:flutter_assignment/login/bloc/validators.dart';
import 'package:flutter_assignment/signup/bloc/signup_boc.dart';
import 'package:flutter_assignment/view/rounded_button.dart';
import 'package:flutter_assignment/view/textfield_normal_container.dart';

class SignupLastPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SignupLastPageState();
}

class SignupLastPageState extends State<SignupLastPage> {
  Widget getPasswordTextField(singUpBloc) {
    return StreamBuilder(
        stream: singUpBloc.password,
        builder: (context, snapshot) {
          return TextFieldNormalContainer(
              hint: "Password",
              obscureText: true,
              errorText: snapshot.error,
              onChanged: singUpBloc.changePassword);
        });
  }

  Widget getConfirmPasswordTextField(singUpBloc) {
    return StreamBuilder(
        stream: singUpBloc.confirmPassword,
        builder: (context, snapshot) {
          return TextFieldNormalContainer(
              hint: "Confirm Password",
              obscureText: true,
              errorText: snapshot.error,
              onChanged: singUpBloc.changeConfirmPassword);
        });
  }

  Widget getFirstCriteriaCorrect(singUpBloc) {
    return StreamBuilder(
        stream: singUpBloc.password,
        builder: (context, snapshot) {
          return Container(
              width: 325,
              child: Row(
                children: [
                  Icon(validateCharacter(snapshot.data.toString())
                      ? Icons.check_circle
                      : Icons.multiline_chart),
                  Text(
                    "Minimum of 8 characters",
                    style: TextStyle(
                        color: validateCharacter(snapshot.data.toString())
                            ? Colors.green
                            : Colors.red),
                  )
                ],
              ));
        });
  }

  Widget getSecondCriteriaCorrect(singUpBloc) {
    return StreamBuilder(
        stream: singUpBloc.password,
        builder: (context, snapshot) {
          return Container(
              width: 325,
              child: Row(
                children: [
                  Icon(validateUpperCaseContains(snapshot.data.toString())
                      ? Icons.check_circle
                      : Icons.multiline_chart),
                  Text(
                    "A capital letter",
                    style: TextStyle(
                        color:
                            validateUpperCaseContains(snapshot.data.toString())
                                ? Colors.green
                                : Colors.red),
                  )
                ],
              ));
        });
  }

  Widget getThirdCriteriaCorrect(singUpBloc) {
    return StreamBuilder(
        stream: singUpBloc.password,
        builder: (context, snapshot) {
          return Container(
              width: 325,
              child: Row(
                children: [
                  Icon(validateLowaerCaseContains(snapshot.data.toString())
                      ? Icons.check_circle
                      : Icons.multiline_chart),
                  Text(
                    "A lowercase letters",
                    style: TextStyle(
                        color:
                            validateLowaerCaseContains(snapshot.data.toString())
                                ? Colors.green
                                : Colors.red),
                  )
                ],
              ));
        });
  }

  Widget getFourCriteriaCorrect(singUpBloc) {
    return StreamBuilder(
        stream: singUpBloc.password,
        builder: (context, snapshot) {
          return Container(
              width: 325,
              child: Row(
                children: [
                  Icon(validateNumberContains(snapshot.data.toString())
                      ? Icons.check_circle
                      : Icons.multiline_chart),
                  Text(
                    "A number",
                    style: TextStyle(
                        color: validateNumberContains(snapshot.data.toString())
                            ? Colors.green
                            : Colors.red),
                  )
                ],
              ));
        });
  }

  Widget getFiveCriteriaCorrect(singUpBloc) {
    return StreamBuilder(
        stream: singUpBloc.confirmPassword,
        builder: (context, snapshot) {
          return Container(
              width: 325,
              child: Row(
                children: [
                  Icon(validateNumberContains(snapshot.data.toString())
                      ? Icons.check_circle
                      : Icons.multiline_chart),
                  Text(
                    "Both matches",
                    style: TextStyle(
                        color: validateNumberContains(snapshot.data.toString())
                            ? Colors.green
                            : Colors.red),
                  )
                ],
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final bloc = SignupBloc();
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
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              //padding: EdgeInsets.only(left: 16.0,top: 10.0,right: 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    color: Colors.black,
                    height: MediaQuery.of(context).size.height * 0.10,
                    child: Row(
                      children: [
                        Expanded(
                            child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "SIGN UP",
                              style: TextStyle(
                                  color: Color(0xFFF2D493),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 5.0,
                              color: Color(0xFFF2D493),
                            )
                          ],
                        )),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                            child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "SIGN UP",
                              style: TextStyle(
                                  color: Colors.transparent,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 5.0,
                              color: Color(0xFFF2D493),
                            )
                          ],
                        )),
                        //Expanded(child: new Column(children: [Text("SIGN UP",style: TextStyle(color: Colors.transparent,fontSize: 20.0,fontWeight: FontWeight.bold),)],))
                      ],
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.75,
                    child: Column(children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: 325.0,
                        child: Text(
                          "Choose password",
                          style: getStyle(),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      getPasswordTextField(bloc),
                      SizedBox(
                        height: 15.0,
                      ),
                      getConfirmPasswordTextField(bloc),
                      SizedBox(
                        height: 15.0,
                      ),
                      getFirstCriteriaCorrect(bloc),
                      getSecondCriteriaCorrect(bloc),
                      getThirdCriteriaCorrect(bloc),
                      getFourCriteriaCorrect(bloc),
                      getFiveCriteriaCorrect(bloc),
                    ]),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Column(
                      children: [
                        RoundedRectButton(
                          onPressed: () {},
                          child: Text(
                            "CONTINUE",
                            style: getStyle(),
                          ),
                          backgroundColor: Color(0xFFF2D493),
                        )
                      ],
                    ),
                  )
                ],
              )),
          scrollDirection: Axis.vertical,
        ));
  }

  TextStyle getStyle() {
    return TextStyle(
        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17.0);
  }
}
