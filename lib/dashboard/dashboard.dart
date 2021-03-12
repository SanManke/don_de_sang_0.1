import 'package:don_de_sang/don/don_page.dart';
import 'package:flutter/material.dart';
import 'griddashboard.dart';
import '../request.dart';
import 'package:don_de_sang/profil/settings.dart';

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
                            return Settings();
                          },
                        ),
                      );
                    },
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