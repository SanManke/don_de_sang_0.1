import 'package:flutter/material.dart';

class Request extends StatefulWidget {
  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffb60d29),
          title: Text('Request'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Phone',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
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
                        offset: Offset(0, 2))
                  ]),
              height: 60,
              child: TextField(
                keyboardType: TextInputType.name,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(
                      Icons.airline_seat_flat_rounded,
                      color: Color(0xffb60d29),
                    ),
                    hintText: 'Beneficiary',
                    hintStyle: TextStyle(color: Colors.black38)),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 2))
                  ]),
              height: 60,
              child: TextField(
                keyboardType: TextInputType.name,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(
                      Icons.announcement,
                      color: Color(0xffb60d29),
                    ),
                    hintText: 'Blood Group',
                    hintStyle: TextStyle(color: Colors.black38)),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 2))
                  ]),
              height: 60,
              child: TextField(
                keyboardType: TextInputType.name,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(
                      Icons.local_hospital,
                      color: Color(0xffb60d29),
                    ),
                    hintText: 'Hospital',
                    hintStyle: TextStyle(color: Colors.black38)),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 2))
                  ]),
              height: 60,
              child: TextField(
                keyboardType: TextInputType.name,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(
                      Icons.contacts,
                      color: Color(0xffb60d29),
                    ),
                    hintText: 'Contact Name',
                    hintStyle: TextStyle(color: Colors.black38)),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 2))
                  ]),
              height: 60,
              child: TextField(
                keyboardType: TextInputType.phone,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(
                      Icons.contact_phone_rounded,
                      color: Color(0xffb60d29),
                    ),
                    hintText: 'Contact Phone',
                    hintStyle: TextStyle(color: Colors.black38)),
              ),
            ),
      Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        width: double.maxFinite,
        child: RaisedButton(
          elevation: 5,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) {
                    return null;
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
            'NEXT',
            style: TextStyle(
                color: Color(0xffb60d29),
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      )
          ],
        ),
    );
  }
}
