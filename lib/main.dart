import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:khartoumport/LogIn.dart';
import 'package:khartoumport/LogIn.dart';
import 'package:khartoumport/homepage.dart';

void main() {
  runApp(const MyApp());
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
      home: LogIn()
          );

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