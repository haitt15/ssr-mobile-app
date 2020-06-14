import 'dart:convert';
import 'package:scoped_model/scoped_model.dart';

import '../../../main.dart';

class ProfileViewModel extends Model {
  String fullName = "";
  String email = "";

  ProfileViewModel() {
    getInfo();
  }

  void getInfo() async {
    dynamic user = await storage.read(key: "UserInfo");
    if (user == null)
      return null;
    else {
      user = jsonDecode(user);
      email = user['email'];
      fullName = user['fullName'];
    }
    notifyListeners();
  }
}
