import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khartoumport/Screens/BusList.dart';
import 'package:khartoumport/Screens/Forms/FawsilForm.dart';
import 'package:khartoumport/Screens/Ticket/ExpressDetails.dart';
import 'package:khartoumport/homepage.dart';
import '';
class Express extends StatefulWidget {
  const Express({Key? key}) : super(key: key);

  @override
  State<Express> createState() => _ExpressState();
}

class _ExpressState extends State<Express> {
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
                builder: (Context) => BusList()
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
                        'اكسبرس ',
                        style: TextStyle(fontSize: 30.0)
                    ),
                    subtitle: Text(
                        'اكسبرس .....السفر السريع',
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
                            child: Text('تفاصيل', style: TextStyle(
                                color: Colors.white,
                                fontSize: 15
                            ),),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (Context) => ExpressDetails()
                              )
                              );
                            },


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