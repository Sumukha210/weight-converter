import 'package:flutter/material.dart';

class DisplayCard extends StatelessWidget {
  final String title;
  final double result;
  final Color bgColor;

  DisplayCard({this.title, this.result, this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
      color: this.bgColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            title: Text(this.title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
            subtitle: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text('${this.result}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  )),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          )
        ],
      ),
    );
  }
}
