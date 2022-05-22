import 'dart:html';
import 'dart:js';
import 'package:flutter/material.dart';
import 'package:khartoumport/Models/UserModel.dart';
import 'package:khartoumport/LogIn.dart';
import 'package:khartoumport/SignIn.dart';
import '../homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';

String ?errormesssage;

class AuthSerice {
  final FirebaseAuth _auth = FirebaseAuth.instance;


  // regester with email and password

  Future RegesterWithemailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password).then((value)=>{}).catchError((e){});
          FirebaseUser user = result.user;

        return user;
        } on FirebaseAuthException catch(error) {

         switch(error.code)
            {
                case "invalid-email":
                errormesssage= "";
                break;
                case "wrong-password":
                errormesssage= "كلمة السر غير صحيحة";
                break;
                case "user-not-found":
                errormesssage= "";
                break;
                 case "user-disabled":
                   errormesssage= "";
                   break;
                case "operation-not-allowed":
                 errormesssage= "";
                 break;
                 default:
                  "حدث خطأ غير معروف";
            };
            return null;
            }
          }


  // regester with email and password
  Future SingInWithemailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);/*.then((uid)=>{
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: context)=>home())),*/

          FirebaseUser user = result.user;

        return user;
        } catch(e) {
        print(e.toString());
        return null;
        }
      }
    }

