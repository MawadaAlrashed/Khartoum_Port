import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'Screens/BusList.dart';
//import 'Screens/StateList.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       appBar: AppBar(
        title: Text('وجهة السفر'),
        leading: Icon(Icons.airplanemode_active
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: (){},
          )
        ],
      ),
       body:SingleChildScrollView(
          /* showTrackOnHover: true,
           isAlwaysShown: true,*/
         child:Container(
         decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage('El-mina.png'),
             fit: BoxFit.cover,
           ),
         ),
         padding: EdgeInsets.only(top: 10.0),
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
              radius: 25.0,
              backgroundImage: AssetImage('assets/Atbera.png'),
                    ),
                title: Text('عطبرة'),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (Context) => BusList()
                    )
                    );
                  }
                    ),
                    ),
               Container(
                 margin: EdgeInsets.only(bottom: 6.0),
                 decoration:BoxDecoration(
                     shape: BoxShape.rectangle,
                     color: Colors.white60
                 ) ,
                 padding: EdgeInsets.all(20.0),
                  child:  ListTile(
                  title: Text("كسلا"),
                   leading: CircleAvatar(
                  radius: 26.0,
                  backgroundImage: AssetImage('assets/Kasalla.png'),
                ),
               /* onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (Context) => Bus()
                  )
                  );
                    },*/
              ),),
              Container(
                margin: EdgeInsets.only(bottom: 6.0),
                decoration:BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white60
                ) ,
              padding: EdgeInsets.all(20.0),
                child: ListTile(
                title: Text('الفاشر'),
                 leading: CircleAvatar(
                 radius: 26.0,
                 backgroundImage: AssetImage('assets/El-Fasher.png'),
                  ),
               /* onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (Context) => Bus()
              )
              );
              },*/
          ),
        ),

              Container(
                margin: EdgeInsets.only(bottom: 6.0),
                decoration:BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white60
                ) ,
              padding: EdgeInsets.all(20.0),
                child: ListTile(
                 title: Text('القضارف'),
                  leading: CircleAvatar(
                  radius: 26.0,
                  backgroundImage: AssetImage('assets/El-Gaddaref.png'),
                ),
                /*onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (Context) => Bus()
                  )
                  );
                  },*/
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 6.0),
              decoration:BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white60
              ) ,
              padding: EdgeInsets.all(20.0),
              child: ListTile(
                  title: Text('حلفا'),
                  leading: CircleAvatar(
                    radius: 26.0,
                    backgroundImage: AssetImage('assets/Halfa.png'),
                  ),
               /* onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (Context) => Bus()
                  )
                  );
                  },*/
                ),
            ),
              Container(
                margin: EdgeInsets.only(bottom: 6.0),
                decoration:BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white60
                ) ,
                child: ListTile(
                  title: Text('دنقلا'),
                  leading: CircleAvatar(
                    radius: 26.0,
                    backgroundImage: AssetImage('assets/Dongola.png'),
                  ),
                  /*onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (Context) => Bus()
                    )
                    );
                    },*/
                ),
              ),
            Container(
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.only(bottom: 6.0),
              decoration:BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white60
              ) ,
              child: ListTile(
                title: Text('الحصاحيصا'),
                leading: CircleAvatar(
                  radius: 26.0,
                  backgroundImage: AssetImage('assets/kasalla.png'),
                ),
                /*onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (Context) => Bus()
                  )
                  );
                  },*/
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.only(bottom: 6.0),
              decoration:BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white60
              ) ,
              child: ListTile(
                title: Text('الجنينة'),
                leading: CircleAvatar(
                  radius: 26.0,
                  backgroundImage: AssetImage('assets/Jinina.png'),
                ),
                /*onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (Context) => Bus()
                  )
                  );
                  },*/
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.only(bottom: 6.0),
              decoration:BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white60
              ) ,
              child: ListTile(
                title: Text('بورتسودان'),
                leading: CircleAvatar(
                  radius: 26.0,
                  backgroundImage: AssetImage('assets/El-Damazeen.png'),
                ),
               /* onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (Context) => Bus()
                  )
                  );
                  },*/
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.only(bottom: 6.0),
              decoration:BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white60
              ) ,
              child: ListTile(
                title: Text('شندي'),
                leading: CircleAvatar(
                  radius: 26.0,
                  backgroundImage: AssetImage('assets/Shandi.png'),
                ),
               /* onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (Context) => Bus()
                  )
                  );
                  },*/
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.only(bottom: 6.0),
              decoration:BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white60
              ) ,
              child: ListTile(
                title: Text('الأبيض'),
                leading: CircleAvatar(
                  radius: 26.0,
                  backgroundImage: AssetImage('assets/El-Damazeen.png'),
                ),
                /*onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (Context) => Bus()
                  )
                  );
                  },*/
              ),
            ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.only(bottom: 6.0),
                  decoration:BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white60
                  ) ,
                  child: ListTile(
                    title: Text('الدمازين'),
                    leading: CircleAvatar(
                      radius: 26.0,
                      backgroundImage: AssetImage('assets/El-Damazeen.png'),
                    ),
                    /*onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (Context) => Bus()
                      )
                      );
                    },*/
                  ),
                ),
          ]
        ),
      ),
       ),
      drawer: Drawer(
        child: Column(
          children:<Widget> [
            UserAccountsDrawerHeader(
              accountName: Text("", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
              ),
              ),
              accountEmail: Text(""),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/login.png'),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(  backgroundImage:AssetImage("assets/login.png"),)
              ],
            ),
            Divider(
                thickness:1
            ),

            ListTile(
                title: Text('archive'),
                leading: Icon(Icons.archive,)
            ),
            Divider(
                thickness:1
            ),
            ListTile(
                title: Text('log-out'),
                leading: Icon(Icons.logout,)
            )
          ],
        ),
      ) ,
      /*floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        child:Icon(Icons.add),
        onPressed: (){},
      ),*/
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
          BottomNavigationBarItem(
            icon:Icon(Icons.people),
            label:'profile',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.settings),
            label:'settings',
          ),
        ],
      ),

      )
    );

  }
}
