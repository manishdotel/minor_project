

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('PROFILE'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('COMPANY NAME:',
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
                    Text('COMPANY EMAIL:',
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
                    Text('COMPANY LOCATION:',
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
                    Text('COMPANY NUMBER:',
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
