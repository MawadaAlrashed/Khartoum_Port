import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:khartoumport/Screens/LogIn.dart';
import 'package:khartoumport/homepage.dart';
import 'package:firebase_core/firebase_core.dart';

import '../Models/UserModel.dart';
import '../main.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized;
  await Firebase.initializeApp();
  runApp(MyApp());
}

final FirebaseAuth _auth =  FirebaseAuth.instance;
String? errormesssage;
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final _formkey = GlobalKey<FormState>();
  final EmailController = new TextEditingController();
  final PasswordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            actions: <Widget>[
              FlatButton.icon(
                color: Colors.blue,
                icon: Icon(Icons.account_circle),
                label: Text(
                  "تسجيل الدخول",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (Context) => LogIn()
                  )
                  );
                },
              )
            ],
            title: Text('انشاء حساب'),
          ),
          body:
          SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.redAccent, Colors.grey]
                ),
              ),
              padding: EdgeInsets.all(20.0),
              child: Form(
                key: _formkey,
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 150,
                      child: Image(
                        image: AssetImage('assets/login.png'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "الرجاء ادخال الايميل ";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          EmailController.text = value!;
                        },
                        controller: EmailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "ادخل الايميل",
                        ),
                        /*onChanged: (val){
                      setState(() {
                        email=val;
                      });
                    },*/

                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "الرجاء ادخال كلمة السر ";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          PasswordController.text = value!;
                        },
                        controller: PasswordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "كلمة السر",
                          border: OutlineInputBorder(),
                        ),
                        /*onChanged: (val){
                      setState(()  {
                        password= val;
                      });
                    },*/
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.blue
                        ),


                        child: FlatButton(

                            child: Text(
                              "انشاء",
                              style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () async {
                              if (_formkey.currentState!.validate()) {
                              dynamic result =await RegesterWithemailAndPassword(
                                    EmailController.text,
                                    PasswordController.text);
                              if (result==null){
                                setState(() => errormesssage="حدث خطأ");
                              }
                              }
                            }

                          /* onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                           builder: (Context)=> LogIn()
                          )
                          );
                      },*/
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
      ),

    );
  }

    Future<String?> RegesterWithemailAndPassword(String email,
        String password) async {
    if(_formkey.currentState!.validate()){
      try {
         dynamic results=await _auth.createUserWithEmailAndPassword(
            email: email, password: password)
            .then((value) =>
              {
              postToFireStore()
               }).catchError((e) {});
         return results;
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            errormesssage = "هذا الايمييل غير متحقق";
            break;
          case "wrong-password":
            errormesssage = "كلمة السر غير صحيحة";
            break;
          case "user-not-found":
            errormesssage = "هذا المستخدم غير موجود";
            break;
          case "user-disabled":
            errormesssage = "هذا المستخدم محظور";
            break;
          case "operation-not-allowed":
            errormesssage = "هذه العملية غير مسمحة";
            break;
          default:
            "حدث خطأ غير معروف";
        };
        return errormesssage;
      }
    }
  }
  postToFireStore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();
    userModel.uid = user!.uid;
    userModel.email = user!.email;
    userModel.password = user!.hashCode as String?;


    await firebaseFirestore.collection("user").doc(user.uid).set(
        userModel.tomap());
     /*Navigator.pushAndRemoveUntil(
         (context),
        MaterialPageRoute(builder: (context)=> home()),
            (route) => false);


  */}

// This tr

  }
