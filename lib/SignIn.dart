import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:khartoumport/LogIn.dart';
//import 'package:portsudan/Services/auth.dart';
import 'package:khartoumport/homepage.dart';


class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final _formkey =GlobalKey<FormState>();
//  final AuthSerice _auth = AuthSerice();

  final EmailController = new TextEditingController();
  final PasswordController = new TextEditingController();

  String email='';
  String password='';
  String error ='';
  @override
  Widget build(BuildContext context) {
    return  SafeArea(

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          actions: <Widget>[
            FlatButton.icon(
              color:Colors.blue,
              icon: Icon(Icons.account_circle),
              label: Text(
                "تسجيل الدخول",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (Context)=> LogIn()
                )
                );
              },
            )
          ],
          title: Text('انشاء حساب'),
        ),
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors:[Colors.redAccent,Colors.grey]
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
                    validator: (value){
                      if(value!.isEmpty){
                        return "الرجاء ادخال الايميل ";
                      }
                      return null;
                    },
                    onSaved: (value){
                      EmailController.text =value!;
                    },
                    controller: EmailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "ادخل الايميل",
                    ),
                    onChanged: (val){
                      setState(() {
                        email=val;
                      });
                    },

                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextFormField(
                    validator: (value){
                      if(value!.isEmpty){
                        return "الرجاء ادخال كلمة السر ";
                      }
                      return null;
                    },
                    onSaved: (value){
                      PasswordController.text = value!;
                    },
                    controller: PasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "كلمة السر",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (val){
                      setState(()  {
                        password= val;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Container(
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.blue
                    ),


                    child:FlatButton(

                         child: Text(
                       "انشاء",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                       ),
                     /* onPressed: () async{
                      if (_formkey.currentState!.validate()){
                      dynamic result = await _auth.RegesterWithemailAndPassword(email, password);
                      if(result== null){
                        setState(()=> error =' كلمة السر غير صحيحة' );
                      }
                     }
                    },
                    */
                      onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                           builder: (Context)=> LogIn()
                          )
                          );
                      },
                  ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    ) ;// This tr
  }
}
