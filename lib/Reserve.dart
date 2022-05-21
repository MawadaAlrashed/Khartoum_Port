import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khartoumport/Form.dart';
import 'package:khartoumport/StateList.dart';
import 'package:khartoumport/Time.dart';
import 'package:khartoumport/homepage.dart';
import '';
class Reserve extends StatefulWidget {
  const Reserve({Key? key}) : super(key: key);

  @override
  State<Reserve> createState() => _ReserveState();
}

class _ReserveState extends State<Reserve> {
  @override
  Widget build(BuildContext context) {

     return Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.grey,
           leading: FlatButton.icon(
             color:Colors.lightBlueAccent,
             icon: Icon(Icons.arrow_back),
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
                     builder: (Context) => Bus()
                 )
                 );
               },
             )
           ],
           title: Text(''),
         ),
         body:Center(
            child: Container(
              width: 300,
              height: 400,
              padding: new EdgeInsets.all(10.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.black12,
                  elevation: 10,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                        const ListTile(
                              leading: Icon(Icons.album, size: 60),
                              title: Text(
                                  'Sonu Nigam',
                                  style: TextStyle(fontSize: 30.0)
                              ),
                              subtitle: Text(
                              'Best of Sonu Nigam Music.',
                      style: TextStyle(fontSize: 18.0)
                  ),
                ),
                     ButtonBar(
                            children: <Widget>[
                              RaisedButton(
                                child: const Text('حجز فردي'),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (Context)=> Time()
                                  )
                                  );
                                },
                              ),
                              RaisedButton(
                                child: const Text('مجموعة'),
                                onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                    builder: (Context)=> Time()
                                  )
                                  );
                                  },
                              ),
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