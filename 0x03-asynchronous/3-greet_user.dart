import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    String user = await fetchUserData();
    String username = jsonDecode(user)["username"];
    return 'Hello $username';
  } catch (err) {
    return 'error caught: $err';
  }
}

Future<String> loginUser() async {
  try {
    bool loggedIn = await checkCredentials();
    print('There is a user: $loggedIn');
    if (loggedIn == true) {
      return greetUser();
    }
    return 'Wrong credentials';
  } catch (err) {
    return 'error caught: $err';
  }
}
