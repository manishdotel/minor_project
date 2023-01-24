import 'package:flutter/material.dart';
import 'package:minor_project/ADD.dart';
import 'package:minor_project/settings/passwordchange.dart';
import 'package:minor_project/sidevar.dart';

import 'HomeScreen.dart';
import 'Profile.dart';


class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],


      drawer: sideNav(),
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(' add items'),

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Add()),
              );
              // Handle option 1 tap
            },
          ),
          ListTile(
            title: Text('password change'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PasswordChange()),
              );
              // Handle option 2 tap
            },
          ),

         
          ListTile(
            title: Text('Dark Mode'),
            trailing: Switch(
              value: _darkMode,
              onChanged: (value) {
                setState(() {
                  _darkMode = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

}