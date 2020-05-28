import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

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

      assert(!user.isAnonymous);
      assert(await user.getIdToken() != null);

      FirebaseUser currentUser = await _auth.currentUser();
      assert(user.uid == currentUser.uid);
      print('${user.displayName}');
      return true;
    } catch (e) {
      print("Login error: " + e.toString());
      return false;
    }
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
