import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:khartoumport/Screens/LogIn.dart';
import 'package:khartoumport/Screens/LogIn.dart';
import 'package:khartoumport/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
//import "package:flutter_cli/flutterfire_cli.dart";
//import 'firebase_options.dart';
import 'generated_plugin_registrant.dart';
import 'package:khartoumport/generated_plugin_registrant.dart';
import 'package:khartoumport/config/config.dart';
//import { initializeApp } from "firebase/app";
//import { getAnalytics } from "firebase/analytics";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Replace with actual values
    options: FirebaseOptions(
      apiKey: "AIzaSyDEzgC0Yjy8D4S5Fh4iMG8SMk57v92hsB0",
      appId: "1:24691422729:web:7b7b97b84929d5c627ead8",
      messagingSenderId: "24691422729",
      projectId: "khartoum-port",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ميناء الخرطوم البري',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const LogIn());
  }
}

/*class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  String email='';
  String password ='';


  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        actions: <Widget>[
          FlatButton.icon(
            color:Colors.blue,
            icon: Icon(Icons.account_circle),
            label: Text(
              "انشاء حساب",
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
            ),
               onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (Context) => SignIn()
                  )
                  );
            },
          )
        ],
        title: Text(widget.title),
      ),
      body:Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors:[Colors.redAccent,Colors.grey]
          ),
          /*image: DecorationImage(
            image: AssetImage('background.png'),
            fit: BoxFit.cover,
          ),*/),
        child: Form(

          child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 150,
                         child: Image(
                        image: AssetImage('assets/login.png'

                        ),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(20.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    hintText: "ادخل الايميل",

                  ),
                    /*onChanged: (val){
                    setState(() {
                      email=val;
                    });
                    },*/
                  validator: (val){
                   if(val!.isEmpty){
                     return "الرجاء ادخال الايميل";
                   }
                  },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextFormField(
               obscureText: true,
                decoration: InputDecoration(
                   labelText: "كلمة السر",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                ),
                validator:  (val){
                  if(val!.isEmpty){
                    return "الرجاء ادخال كلمة السر";
                  }
                  return null;
                },
                onSaved: (value){
                 E
                },
                /*onChanged: (val){
                  setState(()  {
                    password= val;
                  });
                },*/
              ),
            ),
                    Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.blue
                        ),


                        child:FlatButton(
                             child: Text(
                                  "تسجيل الدخول",
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                   ),
                                    onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (Context) => home()
                      )
                      );
                },
              ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child:RichText(
                text: TextSpan(
                  text: 'ليس لديك حساب؟!',
                  style: TextStyle( color: Colors.black, fontSize: 20) ,
                  children: <TextSpan>[
                       TextSpan(
                         text:'انشاء حساب جديد',
                         style: TextStyle(color: Colors.blue, fontSize: 20),
                          recognizer: TapGestureRecognizer()
                          ..onTap= () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (Context) => SignIn()
                            )
                            );
                          },
                       ),
                  ]
                )
              ),

            ),
          ],
        ),
        ),
       ),
      ),

      ) ;// This trailing comma makes auto-formatting nicer for build methods.
  }
}
*/