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
                controller.triggerLeft();
              });
              return TinderSwapCard(
                orientation: AmassOrientation.BOTTOM,
                totalNum: snapshot.data.docs.length,
                stackNum: 3,
                swipeEdge: 4.0,
                maxWidth: MediaQuery.of(context).size.width * 0.9,
                maxHeight: MediaQuery.of(context).size.width * 0.9,
                minWidth: MediaQuery.of(context).size.width * 0.8,
                minHeight: MediaQuery.of(context).size.width * 0.8,
                cardBuilder: (context, index) => Card(
                    child: Container(
                  color: Colors.redAccent,
                  child: Center(
                    child: Text(
                      snapshot.data.docs[index]["firstname"],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),
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
