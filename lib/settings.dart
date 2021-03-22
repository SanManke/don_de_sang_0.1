import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb60d29),
        title: Text('Settings'),
      ),
      body: profileView(),
    );
  }

  Widget profileView() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 0.0,
                width: 0.0,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Stack(
            children: [
              CircleAvatar(
                radius: 70,
                child: ClipOval(
                  child: Image.asset(
                    'assets/woodens.jpg',
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 1,
                right: 1,
                child: Container(
                  height: 40,
                  width: 40,
                  child: Icon(
                    Icons.add_a_photo,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xffb60d29),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
            ],
          ),
        ),
        Text('Woodens Fanfan',
        style: TextStyle(fontSize: 25),),
        Text('AB+', style: TextStyle(fontSize: 15),),
        SizedBox(height: 30,),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffe41134),
                  Color(0xffb60d29),
                  Color(0xff9f0b24),
                  Color(0xff5b0614),
                ],
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 25, 20, 4),
                  child: Container(
                    height: 220,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                            itemCount: 5,
                            itemBuilder: (_, index) {
                              return ListTile(
                                title: Text('Don History #$index', style: TextStyle(fontSize: 25, color: Colors.white),),
                                subtitle: Text('Not Available', style: TextStyle(color: Colors.white70),),
                                trailing: Icon(Icons.arrow_forward, color: Colors.white70,),
                              );
                            }
                        )
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(width: 1.0, color: Colors.white70)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
