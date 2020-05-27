import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

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

      return true;
    } catch (e) {
      print("Login error: " + e.toString());
      return false;
    }
  }

  Future<void> logOut() async {
    try {
      await _auth.signOut();
      await googleSignIn.signOut();
      print("logout success");
    } catch (e) {
      print("logout fail");
    }
  }
}
