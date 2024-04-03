import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/users.dart';

class UserProvider extends ChangeNotifier {
  Users ? _user;
  Users? get user => _user;
  void updateUser(Users newUser) {
    _user = newUser;
    notifyListeners();
  }
}
