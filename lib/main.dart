import 'package:flutter/material.dart';
import 'package:weight_converter/card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int inputVal = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          brightness: Brightness.dark,
          toolbarHeight: 80,
          centerTitle: true,
          title: Text(
            'Weight Calculator',
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: Container(
            margin: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.normal),
                      keyboardType: TextInputType.number,
                      onChanged: (val) {
                        setState(() {
                          this.inputVal = val != '' ? int.parse(val) : 0;
                        });
                      },
                      decoration: InputDecoration(
                          hintText: 'Enter Pounds...',
                          hintStyle: TextStyle(
                              fontSize: 22, color: Colors.grey[600]))),
                  SizedBox(
                    height: 40,
                  ),
                  DisplayCard(
                    title: 'Grams',
                    bgColor: Colors.lightBlue,
                    result: this.inputVal / 0022046,
                  ),
                  DisplayCard(
                    title: 'Kilo Grams',
                    bgColor: Colors.deepOrange,
                    result: this.inputVal / 2.2046,
                  ),
                  DisplayCard(
                    title: 'Ounces',
                    bgColor: Colors.cyan[700],
                    result: this.inputVal * 16.0,
                  )
                ],
              ),
            )),
      ),
    );
  }
}
