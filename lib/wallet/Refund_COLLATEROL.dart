

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sidevar.dart';

class REFUND  extends StatefulWidget{


  @override
  _REFUNDState createState() => _REFUNDState();
}

class _REFUNDState  extends State<REFUND>{

  String _selectedCategory="None" ;
  final List<String> _categories = ['None','esewa', 'ime pay', 'khalti', 'bank transfer',];
  @override
  Widget build(BuildContext context) {
    return Scaffold (

        drawer: sideNav(),
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text(' refundpage'),
          backgroundColor: Colors.green,

        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text('Select payment request :',style: TextStyle(fontSize: 20,color: Colors.black87),),
                      SizedBox(width: 10),
                      DropdownButton(
                        hint: const Text('Select payment request :'), // this will display the hint
                        underline: null,
                        style: TextStyle(fontSize: 20,color: Colors.black87),
                        value:_selectedCategory,
                        onChanged: (value) {
                          setState(() {
                            _selectedCategory = value as String;
                          });
                        },
                        items: _categories.map((category) {
                          return DropdownMenuItem<String>(
                            value: category,
                            child: Text(category),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  SizedBox(height:50),

                  Row(
                    children: [
                      Text('Input refund amount:', style: TextStyle(
                          fontSize: 20, color: Colors.black87)),
                      SizedBox(width: 20),
                      Center(
                        child: Container(
                          width: 150,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(hintText: 'refund in nrs', border: null),
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
                        child: Text(" submit"),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.grey,
                                title: Text("submit"),
                                content: Text("Your payment is sucess . "),
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
        )
    );
  }

}