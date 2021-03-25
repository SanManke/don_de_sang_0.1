import 'package:flutter/material.dart';

class Dashboard2 extends StatefulWidget {
  @override
  _Dashboard2State createState() => _Dashboard2State();
}

class _Dashboard2State extends State<Dashboard2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xffb60d29),
    title: Text('Dashboard'),
    ),
      body: Container(
        child: GridView(
          children: [
            Container(color: Colors.red,
            child: Row(
              children: [
                Text('DON'),
              ],
            ),
            ),
            Container(color: Colors.green,),
            Container(color: Colors.black,),
            Container(color: Colors.yellow,),
          ],
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16
          ),
        ),
      ),
    );
  }
}
