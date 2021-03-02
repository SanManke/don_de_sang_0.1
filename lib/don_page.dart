import 'package:don_de_sang/don_regular.dart';
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
      body: ListView(
        children: [
          _top(),
          SizedBox(height: 150.0,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 25),
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
            padding: EdgeInsets.symmetric(vertical: 25),
            width: double.infinity,
            child: RaisedButton(
              elevation: 5,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return null;
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
                    'DON',
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
}
