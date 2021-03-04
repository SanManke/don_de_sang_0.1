import 'package:flutter/material.dart';

class Don_Regular extends StatefulWidget {
  @override
  _Don_RegularState createState() => _Don_RegularState();
}

class _Don_RegularState extends State<Don_Regular> {
  String title = 'Date Picker';
  String _groupeVal;
  List _groupeSanguin = ['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'];
  DateTime _date = DateTime.now();


  Future<Null> _selectDate (BuildContext context) async{
    DateTime _datePicker = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(2021),
      lastDate: DateTime(2030),
    );

    if(_datePicker != null && _datePicker != _date){
      setState(() {
        _date = _datePicker;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _top(),
          SizedBox(
            height: 150,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffb60d29), width: 5.0),
                    borderRadius: BorderRadius.circular(20.0)),
                child: DropdownButton(
                  hint: Text(
                    'Blood Group',
                    style: TextStyle(
                      color: Color(0xffb60d29),
                      fontFamily: 'BebasNeue',
                      fontSize: 30,
                    ),
                  ),
                  dropdownColor: Color(0xffb60d29),
                  elevation: 5,
                  icon: Icon(Icons.arrow_drop_down_circle_outlined),
                  iconSize: 25.0,
                  iconEnabledColor: Color(0xffb60d29),
                  isExpanded: true,
                  value: _groupeVal,
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                  onChanged: (value) {
                    setState(() {
                      _groupeVal = value;
                    });
                  },
                  items: _groupeSanguin.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          Center(
            child: RaisedButton(
              elevation: 5,
              onPressed: () {
                setState(() {
                  _selectDate(context);
                });
              },
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
              ),
              color: Color(0xffb60d29),
              child: Text(
                'Availability',
                style: TextStyle(fontFamily: 'BebasNeue', color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

_top() {
  return Container(
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: Color(0xffb60d29),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/woodens.jpg"),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'DON Regular',
                  style: TextStyle(
                      fontFamily: 'BebasNeue',
                      fontSize: 30.0,
                      color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
