import 'package:don_de_sang/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:splashscreen/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(
        imageBackground: AssetImage("assets/bloodwalk.gif"),
        navigateAfterSeconds: HomePage(),
        seconds: 3,
        useLoader: false,
      ),
    );
  }
}