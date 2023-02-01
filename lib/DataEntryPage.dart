
import 'package:flutter/material.dart';
import 'package:minor_project/sidevar.dart';


class DataEntryPage extends StatefulWidget {

  @override
  _DataEntryPageState createState() => _DataEntryPageState();
}

class _DataEntryPageState extends State<DataEntryPage> {
  String _selectedCategory="None" ;
  final List<String> _categories = ['None','Solid Waste', 'Plastic Waste', 'Metal Waste', 'Paper Waste',];




  @override
  Widget build(BuildContext context) {

    return Scaffold
      (
      drawer: sideNav(),
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Data Entry'),
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
                  Text('Select Category:',style: TextStyle(fontSize: 20,color: Colors.black87),),
                  SizedBox(width: 30),
                  DropdownButton(
                    hint: Text('Select Category'), // this will display the hint
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
              SizedBox(height: 50),
              Row(
                children: [
                  Text('Input weight:', style: TextStyle(fontSize: 20, color: Colors.black87)),
                  SizedBox(width: 30),
                  Center(
                    child: Container(
                      width: 200,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(hintText: 'give order in kilograms', border: null),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 50),
              Column(
                children: [
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
                                title: Text("order"),
                                content: Text("You'll be notified soon . "),
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
              )
            ],
          )
      ),
    );
  }
}

mixin ImageSource {
}