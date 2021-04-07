import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

final firstColor = Color(0xffc10000);
final secondColor = Colors.red;

class TopScreen extends StatelessWidget {

  var data =[0.0,0.2,0.0,0.3,0.8,1.0,0.3,0.5,0.3,0.9,0.5,0.6,0.4,0.5,-0.2,0.5];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      child: Stack(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [firstColor, secondColor]),
              boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 10),
                blurRadius: 10.0,
              ),
            ]),
          ),
          Positioned(
            top: 70,
            bottom: 0,
            right: 20,
            left: 20,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 60,),
                      Expanded(
                        flex: 5,
                        child: Center(
                          child: Text('Blood Requests',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat')),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Icon(Icons.person),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 0.5),
                          blurRadius: 10,
                        )
                      ]),
                  child: Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(32),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        '291',
                                        style: TextStyle(
                                            fontSize: 36,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat')
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '-12%',
                                        style: TextStyle(
                                            color: Colors.orange,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat'),
                                      )
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Available',
                                        style: TextStyle(fontFamily: 'Montserrat'),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        '-49%',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat'),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '481',
                                        style: TextStyle(
                                            fontSize: 36,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat'),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Requests',
                                        style: TextStyle(fontFamily: 'Montserrat'),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // Image.asset('assets/chart.png', width: 200,),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width - 80,
                              child: Sparkline(
                                data: data,
                                lineColor: Colors.red,
                                pointsMode: PointsMode.none,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
