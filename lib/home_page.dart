import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:don_de_sang/login_page.dart';
import 'package:don_de_sang/screens/feed_screen.dart';
import 'package:don_de_sang/screens/notifications_screen.dart';
import 'package:don_de_sang/screens/profile_screen.dart';
import 'package:don_de_sang/screens/requests_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;

  final _pageOptions = [
    FeedScreen(),
    NotificationsScreen(),
    RequestsScreen(),
    ProfileScreen()
  ];

  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[selectedPage], //destination screen
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
        },
        child: Image.asset("assets/blood_icon.jpg"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          Icons.home,
          Icons.notifications,
          Icons.featured_play_list,
          Icons.person
        ],
        activeIndex: selectedPage,
        activeColor: Colors.blue,
        inactiveColor: Colors.grey,
        splashColor: Colors.red,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) {
          setState(() {
            selectedPage = index;
          });
          //controller.jumpToPage(index);
        },
        //other params
      ),
    );
  }
}
