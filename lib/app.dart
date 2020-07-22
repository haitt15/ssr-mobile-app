import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ssrapp/page/serviceDetail_screen.dart';
import 'package:ssrapp/page/src/navigation/Navigation_View.dart';
import 'package:ssrapp/page/progress_bar.dart';
import 'package:ssrapp/page/src/login/Login_View.dart';
import 'package:ssrapp/page/src/request/Request_View.dart';
import 'package:ssrapp/page/src/request_detail/RequestDetail_View.dart';
import 'package:ssrapp/page/src/service_detail/ServiceDetail_View.dart';
import 'package:ssrapp/page/src/request_history/RequestHistory_View.dart';

import 'main.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColorDark: Colors.black,
          primarySwatch: Colors.blue,
        ),
        home: MainScreen());
  }
}
// TITLE: Thay doi trang thai
// Content: Nhan vien A da thay doi trang thai tu waiting thanh in progress
// TITLE: Thay doi
// Content: Nhan vien A da thay doi trang thai tu waiting thanh in progress
class MainScreen extends StatelessWidget {
  Future<String> get jwtOrEmpty async {
//    var userInfo = await storage.read(key: "UserInfo");
//    if (userInfo == null) return "";
//    return userInfo;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var userInfo=  prefs.getString('UserInfo') ?? "";
//    bool CheckValue = prefs.containsKey('UserInfo');
//    if (CheckValue) {
//      var userInfo = prefs.getString('UserInfo');
//      return userInfo;
//    }
  return userInfo;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarBrightness: Brightness.light,
    ));
    return FutureBuilder(
      future: jwtOrEmpty,
      builder: (context, snapshot) {
        if (!snapshot.hasData) return ProgressBarScreen();
        if (snapshot.data != "") {
          var userInfo = jsonDecode(snapshot.data);
          var jwt = userInfo['token'].split('.');
          if (jwt.length != 3) {
            return LoginScreen();
          } else {
            var payload = json
                .decode(ascii.decode(base64.decode(base64.normalize(jwt[1]))));
            if (DateTime.fromMillisecondsSinceEpoch(payload["exp"] * 1000)
                .isAfter(DateTime.now())) {
              return new NavigationScreen();
            } else {
              return LoginScreen();
            }
          }
        } else {
          return LoginScreen();
        }
      },
    );
  }
}

class FirebaseState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (context, AsyncSnapshot<FirebaseUser> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting)
          return ProgressBarScreen();
        if (!snapshot.hasData || snapshot.data == null) return LoginScreen();
        return new NavigationScreen();
      },
    );
  }
}
