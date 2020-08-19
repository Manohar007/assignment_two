import 'dart:async';

import 'package:flutter_assignment/login/bloc/validators.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

enum Gender { MALE, FEMALE, OTHER }

class SignupBloc extends Object with Validators {
  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();
  final _confirmPassword = BehaviorSubject<String>();

  // retrieve data from stream
  Stream<String> get email => _email.stream.transform(validateEmail);

  Stream<String> get password =>
      _password.stream.transform(validateSignUpPassword);

  Stream<String> get confirmPassword =>
      _confirmPassword.stream.transform(validateSignUpPassword);

  //Stream<bool>   get submitValid => email.isEmpty;

  // add data to stream
  Function(String) get changeEmail => _email.sink.add;

  Function(String) get changePassword => _password.sink.add;

  Function(String) get changeConfirmPassword => _confirmPassword.sink.add;

  dispose() {
    _email.close();
    _password.close();
    _confirmPassword.close();
  }
}
