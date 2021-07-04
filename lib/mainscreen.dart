import 'package:flutter/material.dart';
import 'secondscreen.dart';
import 'profile.dart';

class MainScreen extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        leading: IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      _scaffoldkey.currentState.openDrawer();
                    },
                  ),
        title: Text('App Bar'),
        actions: [
          IconButton(
                            icon: Icon(Icons.search),
                            onPressed: () {},
                        ),
        ],
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Next',
          style: TextStyle(
            color: Colors.white,
          ),
          ),
          color: new Color(0xff622f74),
          onPressed: () {
            Navigator.push(context, 
            MaterialPageRoute(
              builder: (context) => SecondScreen() 
              ),
            );
          },
        ),
      ),
      drawer: Drawer(
                  child: ListView(
                    padding: EdgeInsets.zero,
                      children: <Widget>[
                        DrawerHeader(
                          child: Text(
                          'Drawer Header',
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color:  Color(0xff622f74),
                        ),
                       ),
                          ListTile(
                              title: Text("profile"),
                              onTap: () {
                                Navigator.of(context).pop();
                                Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (BuildContext context) => ProfilePage()));
                              },
                              leading: Icon(Icons.person,
                              color: Colors.black,
                              ),
                          ),
                          Divider(
                            color: Colors.pink[50],
                            height: 10.0,
                          ),
                          ListTile(
                              title: Text("audio"),
                              onTap: () {
                                Navigator.pop(context);
                              },
                              leading: Icon(Icons.audiotrack,
                              color: Colors.green,
                              ),
                          ),
                          Divider(
                            color: Colors.pink[50],
                            height: 10.0,
                          ),
                          ListTile(
                              title: Text("favorite"),
                              onTap: () {
                                Navigator.pop(context);
                              },
                              leading: Icon(Icons.favorite,
                              color: Colors.pink,
                              ),
                          ),
                          Divider(
                            color: Colors.pink[50],
                            height: 10.0,
                          ),
                          ListTile(
                              title: Text("settings"),
                              onTap: () {
                                Navigator.pop(context);
                              },
                              leading: Icon(Icons.settings,
                              color: Colors.blue,
                              ),
                          ),

                      ],
                  ),
              ),
    );
  }
}