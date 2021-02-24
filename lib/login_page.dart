
import 'package:don_de_sang/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

Widget buildPhone() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Phone',
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold
      ),
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2)
            )
          ]
        ),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.phone,
          style: TextStyle(
            color: Colors.black87
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.phone,
              color: Color(0xffb60d29),
            ),
            hintText: 'Phone Number',
            hintStyle: TextStyle(
              color: Colors.black38
            )
          ),
        ),
      )
    ],
  );
}

  class ConnectBtn extends StatelessWidget {

    BuildContext context;

    ConnectBtn({this.context});

    @override
    Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        width: double.infinity,
        child: RaisedButton(
          elevation: 5,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) {
                    return Dashboard();
                  }
              ),
            );
          },
          padding: EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ),
          color: Colors.white,
          child: Text(
            'CONNECT',
            style: TextStyle(
                color: Color(0xffb60d29),
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      );
    }
  }


class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffe41134),
                        Color(0xffb60d29),
                        Color(0xff9f0b24),
                        Color(0xff5b0614),
                      ]
                  )
              ),
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 120
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Sign In',
                      style: TextStyle(
                          fontFamily: 'BebasNeue',
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 50),
                    buildPhone(),
                    SizedBox(height: 50,),
                    ConnectBtn(context: context,)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
