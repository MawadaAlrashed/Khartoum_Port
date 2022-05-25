import 'package:flutter/material.dart';
import 'package:khartoumport/Screens/Bus/Fawasil.dart';

import 'package:khartoumport/Screens/Bus/Express.dart';
import 'package:khartoumport/Screens/Bus/Hadabai.dart';

import 'Screens/Bus/Fawasil.dart';
import 'homepage.dart';


class Bus extends StatefulWidget {
  const Bus({Key? key}) : super(key: key);

  @override
  State<Bus> createState() => _StateBus();
}


class _StateBus extends State<Bus> {
  @override
  Widget build(BuildContext context) {
    return SafeArea (
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey,
              leading: FlatButton.icon(
                color:Colors.lightBlueAccent,
                icon: Icon(Icons.arrow_back_outlined),
                label: Text(
                  "رجوع",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (Context) => home()
                  )
                  );
                },
              ),
              actions: <Widget>[
                FlatButton.icon(
                  color:Colors.blue,
                  icon: Icon(Icons.home),
                  label: Text(
                    "الرئيسية",
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (Context) => home()
                    )
                    );
                  },
                )
              ],
              title: Text(''),
            ),
          body: Container(
            padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('Bus.png'),
                  fit: BoxFit.cover,
                ),
              ),
            child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20.0),
                    margin: EdgeInsets.only(bottom: 6.0),
                    decoration:BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white60
                    ) ,
                        child:ListTile(
                                 leading: CircleAvatar(
                                 radius: 40.0,
                                  backgroundImage: AssetImage('assets/Bus.png'),
                                   ),
                                  title: Text('فواصل'),
                                  onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                   builder: (Context) => Fawasil()
                                    )
                                    );
                                 }
                      ),
                     ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    margin: EdgeInsets.only(bottom: 6.0),
                    decoration:BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white60
                    ) ,
                    child:ListTile(
                        leading: CircleAvatar(
                          radius: 40.0,
                          backgroundImage: AssetImage('assets/Bus.png'),
                        ),
                        title: Text('حدباي'),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (Context) => Hadaby()
                          )
                          );
                        }
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    margin: EdgeInsets.only(bottom: 6.0),
                    decoration:BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white60
                    ) ,
                    child:ListTile(
                        leading: CircleAvatar(
                          radius: 40.0,
                          backgroundImage: AssetImage('assets/Bus.png'),
                        ),
                        title: Text('اكسبرس'),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (Context) => Express()
                          )
                          );
                        }
                    ),
                  ),
                 ]

            )
          ),
                  bottomNavigationBar: BottomNavigationBar(
                  selectedItemColor: Colors.blue,
                  unselectedItemColor: Colors.grey,
                  items:<BottomNavigationBarItem> [
                   BottomNavigationBarItem(
                     icon:Icon(Icons.home),
                    label:'Home',
                      ),
                   BottomNavigationBarItem(
                     icon:Icon(Icons.logout),
                    label:'تسجيل الخروج',
                       ),
         ]
        )
       )
      );
      }
  }
