import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:don_de_sang/screens/feed_screen.dart';
import 'package:don_de_sang/screens/notifications_screen.dart';
import 'package:don_de_sang/screens/profile_screen.dart';
import 'package:don_de_sang/screens/requests_screen.dart';
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
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text("Request Blood"),
              actions: [
                MaterialButton(
                  child: Text('Request'),
                  elevation: 10.0,
                  shape: StadiumBorder(),
                  color: Colors.green,
                  onPressed: () {
                    FirebaseFirestore.instance
                        .collection("requests")
                        .add({
                          "delai": DateTime.now(),
                          "firstname": "Marc Alain",
                          "groupe_sanguin": "AB+",
                          "hopital": "Dash",
                          "lastname": "Boucicault"
                        })
                        .then((value) => print("success"))
                        .catchError((error) => print(error.toString()));
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                MaterialButton(
                  child: Text('Request'),
                  elevation: 10.0,
                  shape: StadiumBorder(),
                  color: Colors.red,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          );
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
