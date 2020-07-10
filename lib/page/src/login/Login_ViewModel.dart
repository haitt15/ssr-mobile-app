import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ssrapp/repository/user_repository.dart';

import '../../../main.dart';

class LoginViewModel extends Model {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  LoginViewModel({FirebaseAuth firebaseAuth, GoogleSignIn googleSignin})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignin ?? GoogleSignIn();

  Future<String> signInWithGoogle() async {
    try {
      var data;
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _firebaseAuth.signInWithCredential(credential);
      var user = await _firebaseAuth.currentUser();
      if (user != null) {
        var token = await user.getIdToken();
        final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
        var fcmToken = await _firebaseMessaging.getToken();
        print("idToken: " + token.token);
        print("fcmToken: " + fcmToken);
        data = await UserRepository.callAPILoginGoogle(token.token, fcmToken);
      }
      return data;
    } catch (e) {
      print("signInWithGoogle Error: " + e.toString());
      signOut();
    }
  }

  Future<void> signOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("UserInfo");
    storage.delete(key: "UserInfo");
    return Future.wait([
      _firebaseAuth.signOut(),
      _googleSignIn.signOut(),
    ]);
  }

  Future<bool> isSignedIn() async {
    try {
      final user = await _firebaseAuth.currentUser();
      if (user != null) {
        return true;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<String> getUser() async {
    return (await _firebaseAuth.currentUser()).email;
  }
}
