import 'package:flutter/material.dart';

class DonSpontaneous extends StatefulWidget {
  @override
  _DonSpontaneousState createState() => _DonSpontaneousState();
}

class _DonSpontaneousState extends State<DonSpontaneous> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _top(),
          SizedBox(height: 100,),

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
                  'DON Spontaneous',
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
