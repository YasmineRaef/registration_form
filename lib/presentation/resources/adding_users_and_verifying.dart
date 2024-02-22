List<Map<String, String>> userCredentials = [];

void storeUsers(String email, String password) {
  Map<String, String> addUser = {'email': email, 'pass': password};
  userCredentials.add(addUser);
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
