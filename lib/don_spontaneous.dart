import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Spontaneous extends StatefulWidget {
  @override
  _SpontaneousState createState() => _SpontaneousState();
}

class _SpontaneousState extends State<Spontaneous> {

  List<String> Names = [
    'Woodens Fanfan', 'Didier Ganthier', 'Dany Augustin', 'Sebastien Gregor', 'Marving Duplan', 'Dave Janvier',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb60d29),
        title: Text('Spontaneous'),

      ),
      body: Container(
        child: ListView.builder(
            itemBuilder: (_,int index) => EachList(this.Names[index]),
          itemCount: this.Names.length,
        ),
      )
    );
  }
}

class EachList extends StatelessWidget {


  final String name;
  EachList(this.name);


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Row(
          children: [
            CircleAvatar(child: Text(name[0]),),
            Padding(padding: EdgeInsets.only(right: 10.0)),
            Text(name),
          ],
        ),
      ),
    );
  }
}