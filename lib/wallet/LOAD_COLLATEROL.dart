

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LOAD_collaterol  extends StatefulWidget{


  @override
  _LOADcollaterolState createState() => _LOADcollaterolState();
}

class _LOADcollaterolState  extends State<LOAD_collaterol>{

  String _selectedCategory="None" ;
  final List<String> _categories = ['None','esewa', 'ime pay', 'khalti', 'bank transfer',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('collaterol_load page'),

        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Input load amount:', style: TextStyle(
                          fontSize: 20, color: Colors.black87)),
                      SizedBox(width: 30),
                      Center(
                        child: Container(
                          width: 200,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: 'load in nrs', border: null),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    children: [
                      Text('Select Payment method:',style: TextStyle(fontSize: 20,color: Colors.black87),),
                      SizedBox(width: 30),
                      DropdownButton(
                        hint: Text('Select Payment method'), // this will display the hint
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