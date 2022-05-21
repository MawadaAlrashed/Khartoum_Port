import 'package:flutter/material.dart';
import 'package:khartoumport/Form.dart';
import 'package:khartoumport/homepage.dart';
class Time extends StatefulWidget {
  const Time({Key? key}) : super(key: key);

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
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
                  builder: (Context) => home()
              )
              );
            },
          )
        ],
        title: Text(''),
      ),
      body: Center(
        child: Container(
          width:400,
          height: 800,
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
                Divider(
                    thickness:3
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'سعر التذكرة : 2.000.000 جنيه سوداني',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ListTile(
                  title: const Text('الفترة الصباحية'),
                  subtitle: Text(
                    'Secondary Text',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                  leading: Icon(Icons.schedule,
                      color: Colors.red),
                ),
                Divider(
                    thickness:1
                ),
               Row(
                 children: [
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
                              builder: (Context) => MyForm()
                      )
                      );
                    },

                         child: const Text('6:00 ص'),
                  ),
                ),),
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
                            builder: (Context) => MyForm()
                        )
                        );
                      },

                         child: const Text('8:00 ص'),
                    ),
                  ),),
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
                            builder: (Context) => MyForm()
                        )
                        );
                      },

                          child: const Text('10:00 ص'),
                    ),
                  ),),
               ],
               ),
                Divider(
                    thickness:3
                ),
                ListTile(
                  title: const Text('الفترة المسائية'),
                  subtitle: Text(
                    'Secondary Text',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                  leading: Icon(Icons.schedule,
                      color: Colors.red),
                ),
                Divider(
                    thickness:1
                ),

                Row(
                  children: [
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
                                builder: (Context) => MyForm()
                            )
                            );
                          },

                          child: const Text('1:00 ظهرا'),
                        ),
                      ),),
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
                            builder: (Context) => MyForm()
                        )
                        );
                      },

                      child: const Text('3:00 عصرا'),
                    ),
                  ),),
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
                            builder: (Context) => MyForm()
                        )
                        );
                      },

                      child: const Text('6:00 م'),
                    ),
                  ),),
                  ],
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
                                builder: (Context) => MyForm()
                            )
                            );
                          },

                          child: const Text(' حجز'),
                        ),
                      ),),
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
                                builder: (Context) => MyForm()
                            )
                            );
                          },

                          child: const Text(' الغاء'),
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
