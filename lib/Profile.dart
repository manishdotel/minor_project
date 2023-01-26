

import 'package:flutter/material.dart';
import 'package:minor_project/sidevar.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: sideNav(),
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('PROFILE'),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Company name:', style: TextStyle(fontSize: 20, color: Colors.black87)),
                    SizedBox(width: 30),
                    Center(
                      child: Container(
                        width: 200,
                        child: TextField(
                          textAlign: TextAlign.center,

                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height:50),
                Row(
                  children: [
                    Text('Company Email:',
                        style: TextStyle(fontSize: 20, color: Colors.black87)),
                    SizedBox(width: 30),
                    Center(
                      child: Container(
                        width: 200,
                        child: TextField(
                          textAlign: TextAlign.center,

                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height:50),
                Row(
                  children: [
                    Text('Company_location:',
                        style: TextStyle(fontSize: 20, color: Colors.black87)),
                    SizedBox(width: 30),
                    Center(
                      child: Container(
                        width: 200,
                        child: TextField(
                          textAlign: TextAlign.center,

                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height:50),
                Row(
                  children: [
                    Text('Company_no:',
                        style: TextStyle(fontSize: 20, color: Colors.black87)),
                    SizedBox(width: 30),
                    Center(
                      child: Container(
                        width: 200,
                        child: TextField(
                          textAlign: TextAlign.center,

                        ),
                      ),
                    )
                  ],
                ),


        SizedBox(height: 50),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  ElevatedButton(
                    child: Text(" SAVE COMPANY PROFILE"),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.grey,
                            title: Text("PROFILE"),
                            content: Text("YOUR COMPANY PROFILE IS SAVED "),
                            actions: [


                              ElevatedButton(
                                child: Text('Okay'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              )

                            ],
                          );
                        },
                      );
                    },
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              )
              ]

      )
    ),
    );
  }

}
