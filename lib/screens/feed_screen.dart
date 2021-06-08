import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:don_de_sang/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  var _bloodGroupList = [
    "O-",
    "O+",
    "A-",
    "A+",
    "B-",
    "B+",
    "AB-",
    "AB+",
  ];

  var selectedBloodGrup = 0;

  String bloodGroup = "all";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 80.0,
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.all(10.0),
              scrollDirection: Axis.horizontal,
              itemCount: _bloodGroupList == null ? 0 : _bloodGroupList.length,
              itemBuilder: (context, index) {
                return CategoryItem(
                  isSelected: selectedBloodGrup == index ? true : false,
                  text: _bloodGroupList[index],
                  onTap: () {
                    // change color
                    setState(() {
                      selectedBloodGrup = index;
                      bloodGroup = _bloodGroupList[index];
                    });
                    // exec getPosts
                  },
                );
              },
            ),
          ),
          Expanded(
            flex: 6,
            child: StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection("requests").snapshots(),
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
                      return ListView.builder(
                        itemExtent: 200,
                        itemCount: snapshot.data.docs.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 300,
                              height: 300,
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                gradient: LinearGradient(
                                    colors: [Colors.orange, Colors.orangeAccent, Colors.deepOrange]),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    child: Center(
                                      child: Text(
                                        snapshot.data.docs[index]
                                            ["groupe_sanguin"],
                                        style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("Bénéficiaire:"),
                                      Text(
                                        snapshot.data.docs[index]["firstname"] + " " + snapshot.data.docs[index]["lastname"],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("Contact:"),
                                      Text(
                                        "+509 3719-8523",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("Cause:"),
                                      Container(
                                        width: 150,
                                        height: 50,
                                        child: Text(snapshot.data.docs[index]["description"]),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
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
            ),
          ),
        ],
      ),
    );
  }
}
