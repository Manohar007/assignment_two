import 'package:flutter/material.dart';
import 'package:flutter_assignment/signup/bloc/signup_boc.dart';
import 'package:flutter_assignment/signup/view/sign_up_last_screen.dart';
import 'package:flutter_assignment/view/rounded_button.dart';
import 'package:flutter_assignment/view/textfield_normal_container.dart';

class SignupSecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SignupSecondPageState();
}

class SignupSecondPageState extends State<SignupSecondPage> {
  Widget getEmailTextField(singUpBloc) {
    return StreamBuilder(
        stream: singUpBloc.email,
        builder: (context, snapshot) {
          return TextFieldNormalContainer(
            hint: "Email Address",
            obscureText: false,
            errorText: snapshot.error,
            onChanged: singUpBloc.changeEmail,
          );
        });
  }

  Widget getNextButton(singUpBloc) {
    return StreamBuilder(
        stream: singUpBloc.email,
        builder: (context, snapshot) {
          return RoundedRectButton(
            onPressed: () {
              //print("errorroror"+);
              if (snapshot.error == "Enter a valid email") {
              } else
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => SignupLastPage()));
            },
            child: Text(
              "NEXT",
              style: getStyle(),
            ),
            backgroundColor: Color(0xFFF2D493),
          );
        });
  }

  String dropDownSelected = "Once a week";
  int genderValue = 0;

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
                              height: 1.5,
                              color: Colors.white,
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
                    height: MediaQuery.of(context).size.height * 0.74,
                    child: Column(children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: 325.0,
                        child: Text(
                          "Whats your email address?",
                          style: getStyle(),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      getEmailTextField(bloc),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        width: 325.0,
                        child: Text(
                          "Whats your gender?",
                          style: getStyle(),
                        ),
                      ),
                      Row(
                        children: [
                          Text("Male", style: getStyle()),
                          Radio(
                              value: 0,
                              groupValue: genderValue,
                              onChanged: (value) {
                                setState(() {
                                  genderValue = value;
                                });
                              }),
                          Text("Female", style: getStyle()),
                          Radio(
                              value: 1,
                              groupValue: genderValue,
                              onChanged: (value) {
                                setState(() {
                                  genderValue = value;
                                });
                              }),
                          Text("N/A", style: getStyle()),
                          Radio(
                              value: 2,
                              groupValue: genderValue,
                              onChanged: (value) {
                                setState(() {
                                  genderValue = value;
                                });
                              }),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        width: 325.0,
                        child: Text(
                          "How much you train?",
                          style: getStyle(),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        width: 325.0,
                        child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                          items: <String>[
                            'Once a week',
                            'Twice a week',
                            'Once a month',
                            'Twice a month',
                            'Trice a month'
                          ].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(
                                value,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17.0),
                              ),
                            );
                          }).toList(),
                          onChanged: (String value) {
                            setState(() {
                              setState(() {
                                dropDownSelected = value;
                              });
                            });
                          },
                          hint: Text(
                            dropDownSelected,
                            style:
                                TextStyle(color: Colors.black, fontSize: 17.0),
                          ),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            border: Border.all(color: Colors.grey, width: 0.5)),
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 10.0),
                      )
                    ]),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Column(
                      children: [getNextButton(bloc)],
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
