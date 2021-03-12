import 'body.dart';

import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb60d29),
        title: Text('Settings'),
        actions: [
          FlatButton(
            textColor: Colors.white,
            child: Text(
              'Infos',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
      body: Body(),
    );
  }
}
