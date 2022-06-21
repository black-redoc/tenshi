import 'package:flutter/foundation.dart';

class LoginUsernameProvider extends ChangeNotifier {
  String _username = "";

  set username(String email) {
    _username = email;
    notifyListeners();
  }
  String get username => _username;
}