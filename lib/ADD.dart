

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  
  @override

  _AddState createState() => _AddState();  }

class _AddState extends State<Add> {
  String _selectedCategory = "None";

  final List<String> _categories = [
    'None',
    'Solid Waste',
    'Plastic Waste',
    'Metal Waste',
    'Paper Waste',
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

          backgroundColor: Colors.teal,
      appBar: AppBar(
      title: Text('Add new items'),

    ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Select Category:',
                  style: TextStyle(fontSize: 20, color: Colors.black87),),
                SizedBox(width: 30),
                DropdownButton(
                  hint: Text('Select Category'),
                  // this will display the hint
                  underline: null,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  value: _selectedCategory,
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

            SizedBox(height: 50),
            Row(
              children: [
                Text('Input PRICE:', style: TextStyle(fontSize: 20, color: Colors.black87)),
                SizedBox(width: 30),
                Center(
                  child: Container(
                    width: 200,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(hintText: 'GIVE PRICE OF SELECTED ITEMS', border: null),
                    ),
                  ),
                )
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
                  child: Text(" ADD MORE"),
                  onPressed: () {
                     {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Add()),
                      );
                    };

                  }
                ),

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
            title: Text("SUBMIT"),
            content: Text("YOUR NEW CATEGORY IS ADDED "),
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
          ],
        ),
      ),
    );
  }


}
