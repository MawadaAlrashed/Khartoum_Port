// ignore_for_file: unused_label

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:khartoumport/SignIn.dart';

import 'package:khartoumport/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:khartoumport/main.dart';

   void main() async{
     WidgetsFlutterBinding.ensureInitialized;
      await Firebase.initializeApp();
     runApp(MyApp());
   }

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  final FirebaseAuth _auth =  FirebaseAuth.instance;
  final _formkey = GlobalKey<FormState>();


  final EmailController = new TextEditingController();
  final PasswordController = new TextEditingController();

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          actions: <Widget>[
            Icon(Icons.person),
            FlatButton.icon(
              color:Colors.red,
              icon: Icon(Icons.people),
              label: Text(
                  "انشاء حساب",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (Context)=> SignIn()
                 )
                );
                },

            )
          ],
          title: Text('تسجيل الدخول'),
        ),
        body: Container(

          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors:[Colors.redAccent,Colors.grey]
            ),
          ),
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
                      controller: EmailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                      hintText: "ادخل الايميل",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'الرجاء ادخال الايميل';
                      }
                      return null;
                      },
                      onSaved: (value){
                        EmailController.text = value!;
                      },

                    /*onChanged: (val) {
                      setState(() {
                        email = val;
                      });
                    },*/
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextFormField(

                    controller: PasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password_outlined),
                      labelText: "كلمة السر",
                      border: OutlineInputBorder(),
                    ),
                    validator: (val) {
                              if (val!.isEmpty){
                              return 'ادخل كلمة سر لا تقل عن 6 احرف';
                              }
                              return null;
                              },
                    onSaved: (vlaue){
                       PasswordController.text = vlaue!;
                    },

                    /*onChanged: (val) {
                      setState(() {
                        password = val;
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
                          "تسجيل الدخول",
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        /*onPressed: () {
                           Navigator.push(context, MaterialPageRoute(
                           builder: (Context)=> home()
                          )
                          );
                            },*/

                       onPressed:() async {
                         SingInWithemailAndPassword(
                                 EmailController.text, PasswordController.text);
                    }
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: RichText(
                      text: TextSpan(
                          text: 'ليس لديك حساب؟!',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'انشاء حساب جديد',
                                style: TextStyle(color: Colors.blue,
                                    fontSize: 20),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (Context) => home()
                                    )
                                    );
                                  }
                            ),
                          ]
                      )
                  ),

                ),
              ],
            ),
          ),
        ),
      )

    ); // This trailing
  }
  void  SingInWithemailAndPassword(String email, String password) async {
    try {
       await _auth.signInWithEmailAndPassword(
          email: email, password: password).then((uid)=>{
         Navigator.of(context).pushReplacement(
             MaterialPageRoute(builder: (context)=>home()))
       });
    }
    on FirebaseAuthException catch(error) {

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
      print(error.code);

    }//onfireexception
  }
    }


