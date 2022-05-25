import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khartoumport/Form.dart';
import 'package:khartoumport/StateList.dart';
import 'package:khartoumport/Time.dart';
import 'package:khartoumport/homepage.dart';
import '';
class Fawasil extends StatefulWidget {
  const Fawasil({Key? key}) : super(key: key);

  @override
  State<Fawasil> createState() => _FawasilState();
}

class _FawasilState extends State<Fawasil> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:Colors.black12,

      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: FlatButton.icon(
          color:Colors.lightBlueAccent,
          icon: Icon(Icons.logout),
          label: Text(
            "رجوع",
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (Context) => Bus()
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
                  builder: (Context) => Bus()
              )
              );
            },
          )
        ],
        title: Text(''),
      ),
      body:Center(
          child:Container(
            width: 300,
            height: 200,
            padding: new EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.white60,
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.album, size: 60),
                    title: Text(
                        'فواصل',
                        style: TextStyle(fontSize: 30.0)
                    ),
                    subtitle: Text(
                        'فواصل .....السفر المريح',
                        style: TextStyle(fontSize: 18.0)
                    ),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.blue
                          ),


                          child:FlatButton(

                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (Context) => Time()
                              )
                              );
                            },

                            child:Text('تفاصيل', style: TextStyle(
                                color: Colors.white,
                                fontSize: 15
                            ),),
                          ),
                        ),),
                    ],
                  ),
                ],
              ),
            ),
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
        ],

      ),
    );
  }
}