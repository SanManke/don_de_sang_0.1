import 'dart:async';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection("requests").snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          if (snapshot.data != null) {
            if (snapshot.data.docs.length != 0) {
              CardController controller = CardController();
              Timer(Duration(seconds: 5), () {
                controller?.triggerLeft();
              });
              return Center(
                child: TinderSwapCard(
                  orientation: AmassOrientation.BOTTOM,
                  totalNum: snapshot.data.docs.length,
                  stackNum: 3,
                  swipeEdge: 4.0,
                  maxWidth: MediaQuery.of(context).size.width * 0.9,
                  maxHeight: MediaQuery.of(context).size.width * 0.9,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  minHeight: MediaQuery.of(context).size.width * 0.8,
                  cardBuilder: (context, index) => Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                              colors: [Colors.red, Colors.redAccent],
                              end: Alignment.centerLeft,
                              begin: Alignment.centerRight),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "BESOIN URGENT DE SANG",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.redAccent,
                                        Colors.yellowAccent
                                      ],
                                    ),
                                  ),
                                  child: Text("Test"),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Expanded(
                                  child: Text(
                                    "CNTS - Centre National \n de Transfusion Sanguine \n Immeuble DIgicel Turgeau",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 90,
                                  height: 20,
                                  color: Colors.black,
                                  child: Center(
                                    child: Text(
                                      "GROUPE SANGUIN",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 90,
                                  height: 20,
                                  color: Colors.black,
                                  child: Center(
                                    child: Text(
                                      "BENEFICIAIRES",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 90,
                                  height: 20,
                                  color: Colors.black,
                                  child: Center(
                                    child: Text(
                                      "HOPITAL",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 8),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 90,
                                  height: 70,
                                  color: Colors.white,
                                  child: Center(
                                    child: Text(
                                      snapshot.data.docs[index]["groupe_sanguin"],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 70,
                                  child: Column(
                                    children: [
                                      Text(
                                        snapshot.data.docs[index]["firstname"] +
                                            " " +
                                            snapshot.data.docs[index]["lastname"],
                                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        snapshot.data.docs[index]["description"],
                                        style: TextStyle(color: Colors.white54, fontSize: 10,),
                                      ),
                                      Text("Contact:"),
                                      Text("37198523")
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 50,
                                  child: Text(
                                    snapshot.data.docs[index]["hopital"],
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                  cardController: controller,
                  swipeUpdateCallback:
                      (DragUpdateDetails details, Alignment align) {
                    /// Get swiping card's alignment
                    if (align.x < 0) {
                      //Card is LEFT swiping
                    } else if (align.x > 0) {
                      //Card is RIGHT swiping
                    }
                  },
                  swipeCompleteCallback:
                      (CardSwipeOrientation orientation, int index) {
                    Timer(Duration(seconds: 5), () {
                      controller.triggerLeft();
                    });
                    if (index == snapshot.data.docs.length - 1) {
                      setState(() {
                        index = 0;
                      });
                    }
                  },
                ),
              );
            } else {
              return Text("Data length is 0");
            }
          } else {
            return Center(
              child: Text("No results found"),
            );
          }
        }
      },
    ));
  }
}
