import 'package:string_validator/string_validator.dart';

List<Map<String, String>> userCredentials = [
  {'email': 'raef@gmail.com', 'pass': 'Relsay9#'},
  {'email': 'yasminer@gmail.com', 'pass': 'Jan012004#'},
];

void storeUsers(String email, String password) {
  Map<String, String> addUser = {'email': email, 'pass': password};
  userCredentials.add(addUser);
}

checkEmail(String email) {
  for (var data in userCredentials) {
    if (data['email'] == email) {
      return true;
    } else {
      return false;
    }
  }
}

checkInputs(String email, String password) {
  for (var data in userCredentials) {
    if (data['email'] == email && data['pass'] == password) {
      return true;
    } else {
      return false;
    }
  }
}

class Validator {
  static String correctPass = '';
  static String email = '';
  static String? checker(String hintText, String value) {
    switch (hintText) {
      case 'E-mail':
        email = value;
        if (!isEmail(email)) {
          return 'invalid email .. ex: __@sth.com';
        }
      case 'Password':
        correctPass = value;
        if (value.length < 6) {
          return 'password must be more than 6 characters';
        }
        if (!value.contains(RegExp(r'[A-Z]'))) {
          return 'Add at least one capital letter';
        }
        if (!value.contains(RegExp(r'[a-z]'))) {
          return 'Add at least one lowercase letter';
        }
        if (!value.contains(RegExp(r'[0-9]'))) {
          return 'A digit is required';
        }
        if (!value.contains(RegExp('[!@#%^&*_?<>~,.\$"]'))) {
          return 'Special character required';
        }
      case 'Confirm Password':
        if (value != correctPass) {
          return 'Incorrect Password';
        }
    }

    return null; //commented then
  }

  static String emailIdentifier() {
    return email;
  }

  static String passIdentifier() {
    return correctPass;
  }
}
