import 'package:don_de_sang/don/don_regular.dart';
import 'package:don_de_sang/don/sponta.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Don extends StatefulWidget {
  @override
  _DonState createState() => _DonState();
}

class _DonState extends State<Don> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb60d29),
        title: Text('Regular'),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 150.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 40),
            width: double.infinity,
            child: RaisedButton(
              elevation: 5,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Don_Regular();
                  }),
                );
              },
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Color(0xffb60d29),
              child: Text(
                'REGULAR DONOR',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 40),
            width: double.infinity,
            child: RaisedButton(
              elevation: 5,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return ListSpontaneous();
                  }),
                );
              },
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Color(0xffb60d29),
              child: Text(
                'SPONTANEOUS DONOR',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
