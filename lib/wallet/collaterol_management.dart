

import 'package:flutter/material.dart';
import 'package:minor_project/settings/passwordchange.dart';
import 'package:minor_project/wallet/pay_amount.dart';

import '../ADD.dart';
import 'LOAD_COLLATEROL.dart';
import 'Refund_COLLATEROL.dart';
import 'collaterol_management.dart';



class collaterol  extends StatefulWidget{


  @override
  _collaterolState createState() => _collaterolState();
}

class _collaterolState  extends State<collaterol>  {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],



      appBar: AppBar(
        title: Text('collaterol'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(' load collaterol'),

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LOAD_collaterol()),
              );
              // Handle option 1 tap
            },
          ),
          ListTile(
            title: Text('refund mangement'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => REFUND()),
              );

              // Handle option 2 tap
            },
          )
        ],
      ),
    );
  }

}

