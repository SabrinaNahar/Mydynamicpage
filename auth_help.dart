import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mydynamic/database.dart';


class AuthHelp{

  static FirebaseAuth _auth = FirebaseAuth.instance;
  static signInWithEmail ({String email, String password}) async{
    final res = await _auth.signInWithEmailAndPassword(email: email, password: password);
    final User user = res.user;
    await DatabaseService(uid: user.uid).updateUserData('this.name', 'this.note','this.time');

    return user;

  }

  static signInWithGoogle() async{

    GoogleSignIn googleSignIn = GoogleSignIn();
    final acc = await googleSignIn.signIn();
    final auth = await acc.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: auth.accessToken,
      idToken: auth.idToken
    );

    final res = await _auth.signInWithCredential(credential);
    return res.user;

  }

  static LogOut(){
    GoogleSignIn().signOut();
    return _auth.signOut();


  }


}


