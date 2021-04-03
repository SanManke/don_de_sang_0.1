import 'package:don_de_sang/home_page.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
          () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bloodwalk.gif'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text('Gout San Sove Lavi',
                  style: TextStyle(
                    fontFamily: 'BebasNeue',
                    fontSize: 30.0,
                    color: Color(0xffe41134),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height),
              Container(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text('POWERED BY SPOTLIGHT',
                    style: TextStyle(
                        fontFamily: 'BebasNeue',
                        color: Color(0xffe41134)
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}