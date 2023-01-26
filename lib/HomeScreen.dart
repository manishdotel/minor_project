import 'package:flutter/material.dart';
import 'package:minor_project/sidevar.dart';
import 'package:minor_project/wallet/collaterol_management.dart';

import 'package:minor_project/wallet/wallet.dart';

import 'DataEntryPage.dart';


class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var children =
  [
    DataEntryPage(),
    WalletPage()
  ];
  int _currentindex =0;
  void onTappedBar(int index) {
    setState(() {
      _currentindex = index;
    });

    switch (index) {
      case 0:
      // do something
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DataEntryPage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WalletPage()),
        );

        break;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: sideNav(),
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('business order items are displayed here'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentindex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green,


          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Data',
            backgroundColor: Colors. green,

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'wallet',
            backgroundColor: Colors.green,
          ),

        ],
      ),
    );
  }
}