import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ssrapp/screens/login_screen.dart';
import 'package:ssrapp/screens/progress_bar.dart';
import 'package:ssrapp/screens/home_screen.dart';
import 'package:ssrapp/screens/navigation_screen.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen()
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (context, AsyncSnapshot<FirebaseUser> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting)
          return ProgressBarScreen();
        if (!snapshot.hasData || snapshot.data == null) return LoginScreen();
        return NavigationScreen();
      },
    );
  }
}
