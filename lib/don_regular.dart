import 'package:flutter/material.dart';

class Don_Regular extends StatefulWidget {
  @override
  _Don_RegularState createState() => _Don_RegularState();
}

class _Don_RegularState extends State<Don_Regular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _top(),
          SizedBox(height: 150,),
          Container(
            height: 50.0,
            alignment: Alignment.center,
            color: Color(0xffb60d29),
            child: DropdownButton<String>(items: [
              DropdownMenuItem(
                child: Text('Blood Group'),
                value: 'A+',)
            ], onChanged: null),
          )
        ],
      ),
    );
  }
}

_top() {
  return Container(
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: Color(0xffb60d29),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/woodens.jpg"),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'DON Regular',
                  style: TextStyle(
                      fontFamily: 'BebasNeue',
                      fontSize: 30.0,
                      color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

