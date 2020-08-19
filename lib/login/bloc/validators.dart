import 'dart:async';

class Validators {
  final validateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (validateEmailUsingREGX(email)) {
      sink.add(email);
    } else {
      sink.addError('Enter a valid email');
    }
  });

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.length >= 8) {
      sink.add(password);
    } else {
      sink.addError('Password must be at least 8 characters');
    }
  });

  final validateSignUpPassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (validatePasswordStructure(password)) {
      sink.add(password);
    } else {
      sink.addError('Please enter valid password');
    }
  });
}

bool validateEmailUsingREGX(String value) {
  print(value);
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  return (!regex.hasMatch(value)) ? false : true;
}

bool validatePasswordStructure(String value) {
  if (validateLowaerCaseContains(value) &&
      validateUpperCaseContains(value) &&
      validateNumberContains(value) &&
      value.length >= 8)
    return true;
  else
    return false;
}

bool validateLowaerCaseContains(String value) {
  for (int i = 0; i < value.length; i++) {
    if (double.parse(value[i], (e) => null) == null &&
        value[i].toLowerCase() == (value[i])) return true;
  }

  return false;
}

bool validateUpperCaseContains(String value) {
  for (int i = 0; i < value.length; i++) {
    if (double.parse(value[i], (e) => null) == null &&
        value[i].toUpperCase() == (value[i])) return true;
  }

  return false;
}

bool validateNumberContains(String value) {
  for (int i = 0; i < value.length; i++) {
    if (double.parse(value[i], (e) => null) != null) return true;
  }

  return false;
}

bool validateCharacter(String value) {
  return value.length > 8;
}

bool validateTwoString(String one, String two) {
  return one == two;
}
