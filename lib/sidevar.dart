import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'HomeScreen.dart';
import 'Profile.dart';
import 'Settings.dart';

class sideNav extends StatelessWidget {
  const sideNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(

            child: Text(
              ' Company_name',

              style: TextStyle(color: Colors.black, fontSize: 25),
            ),

          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()))
            },
          ),

          ListTile(
            leading: Icon(Icons.supervised_user_circle_outlined),
            title: Text('profile'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Profile()))
            },
          ),


          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Settings()))
            },
          ),


          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()))
            },
          ),
        ],
      ),
    );
  }
}