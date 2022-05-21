import 'dart:html';

import 'firebase_auth';

class AuthSerice {
  final FirebaseAuth _auth = Firebase.instance;


  // regester with email and password

  Future RegesterWithemailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password),
          FirebaseUser user = result.user
    ,
    return user;
    } catch(e) {
    print(e.toString());
    return null;
    }
  }

  // regester with email and password
  Future SingInWithemailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password),
          FirebaseUser user = result.user,
    return user;
    } catch(e) {
    print(e.toString());
    return null;
    }
  }
}