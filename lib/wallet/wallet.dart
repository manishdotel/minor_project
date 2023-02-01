

import 'package:flutter/material.dart';
import 'package:minor_project/settings/passwordchange.dart';
import 'package:minor_project/wallet/pay_amount.dart';

import '../ADD.dart';
import 'collaterol_management.dart';



class WalletPage  extends StatefulWidget{


  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState  extends State<WalletPage>  {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],



      appBar: AppBar(
        title: Text('wallet'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(' collaterol management'),

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => collaterol()),
              );
              // Handle option 1 tap
            },
          ),
          ListTile(
            title: Text('fund mangement'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => payPage()),
              );

              // Handle option 2 tap
            },
          ),
        ],
      ),
    );
  }

}