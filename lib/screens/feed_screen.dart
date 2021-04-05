import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 44,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  height: 500,
                  child: Swiper(
                    itemCount: 4,
                    itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                    layout: SwiperLayout.STACK,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Column(
                            children: [
                              Card(
                                elevation: 8.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0)),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 100,
                                      ),
                                      Text(
                                        "Request",
                                        style: TextStyle(
                                          fontSize: 34,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 32,
                                      ),
                                      Text(
                                        "Didier Ganthier",
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Details",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Icon(Icons.arrow_forward)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Positioned(
                            left: 50,
                            top: 0,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("assets/didier.jpeg"),
                              radius: 50,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
