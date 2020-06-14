import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:http/http.dart' as http;

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final FacebookLogin facebooklogin = FacebookLogin();

  Future<bool> signInWithEmail(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      if (user != null) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
void getUid(){

}
  var response;
  Future<bool> signInWithGoogle() async {
    try {
      GoogleSignInAccount account = await googleSignIn.signIn();
      GoogleSignInAuthentication googleSignInAuthentication =
          await account.authentication;
      AuthCredential credential = GoogleAuthProvider.getCredential(
          idToken: await googleSignInAuthentication.idToken,
          accessToken: await googleSignInAuthentication.accessToken);

      AuthResult result = await _auth.signInWithCredential(credential);
      FirebaseUser user = result.user;
      print("Uid: " + user.uid);
      assert(!user.isAnonymous);
      assert(await user.getIdToken() != null);

//      http.Response response;
      _auth.currentUser().then((user) => {
            if (user != null)
              {
                user.getIdToken().then((token) => {
                      print(token.token),
                      loginGoogle(token.token)
                    })

              }
          });
      return true;
    } catch (e) {
      print("Login error: " + e.toString());
      return false;
    }
  }
  void loginGoogle(String idToken) async {
    String data;
    response = await http.post(
      'https://ssrapi.azurewebsites.net/api/v1/Auth/Google',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(<String, String>{'IdToken': idToken}),
    );
    assert(response.statusCode == 200);
    data = jsonEncode(response.body);
    print(data);
  }

  Future<bool> signInWithFacebook() async {
    try {
      final result = await facebooklogin.logIn(['email', 'public_profile']);
      if (result.status == FacebookLoginStatus.loggedIn) {
        final AuthCredential credential = FacebookAuthProvider.getCredential(
            accessToken: result.accessToken.token);
        final FirebaseUser user =
            (await FirebaseAuth.instance.signInWithCredential(credential)).user;
        print('${user.displayName}');
        return true;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<void> logOut() async {
    try {
      await _auth.signOut();
      await googleSignIn.signOut();
      await facebooklogin.logOut();
      print("logout success");
    } catch (e) {
      print("logout fail");
    }
  }

  Future<bool> checkLogin() async {
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        return true;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}
