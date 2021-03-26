import 'package:don_de_sang/dashboard/dashboard_2.dart';
import 'package:don_de_sang/don/don_page.dart';
import 'package:don_de_sang/don/sponta.dart';
import 'package:don_de_sang/request%202.dart';
import 'package:flutter/material.dart';
import '../settings.dart';
import 'griddashboard.dart';
import '../request.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 110,),
          Padding(padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RaisedButton(onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Don();
                          },
                        ),
                      );
                    },
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child :Text('Dashboard', style: TextStyle(fontFamily: 'BebasNeue',
                          color: Colors.red,
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(
            height: 40,
          ),
          GridDashboard(),
          RaisedButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Settings();
                },
              ),
            );
          },
            padding: EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)),
            child :Text('Settings', style: TextStyle(fontFamily: 'BebasNeue',
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
            ),
          ),
          RaisedButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Request();
                },
              ),
            );
          },
            padding: EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)),
            child :Text('Request', style: TextStyle(fontFamily: 'BebasNeue',
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
            ),
          ),
        ],
      ),
    );
  }
}


//bottomSheet: Container(
//height: 100.0,
//width: double.infinity,
//color: Color(0xffb60d29),
//child: Center(
//child: Padding(
//padding: EdgeInsets.only(bottom: 30.0),
//child: Text('Actualites', style: TextStyle(color: Colors.white,
//fontSize: 20.0,
//fontWeight: FontWeight.bold,
//),
//),
//),
//),
//),



//IconButton(
//icon: Image.asset('assets/blooddrop.png'),
//),