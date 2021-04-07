import 'package:flutter/material.dart';

class Requests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(16.0),
      itemCount: _requestList.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 150,
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Row(
            children: <Widget>[
              Container(
                height: 100,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(61, 62, 63, 1)),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8)),
                          color: Colors.red),
                      width: 80,
                      height: 20,
                      child: Center(
                        child: Text(
                          'URGENT',
                          style: TextStyle(color: Colors.white, fontSize: 11,fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      child: Center(
                        child: Text(
                          _requestList[index].bloodtype,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        height: 52,
                        padding: EdgeInsets.all(16),
                        child: Text(
                          _requestList[index].name,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        )),
                    Container(
                      padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                      child: Row(
                        children: <Widget>[
                          Text(_requestList[index].age.toString(),style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w600)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('.'),
                          SizedBox(
                            width: 5,
                          ),
                          Text(_requestList[index].gender, style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w600)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('.'),
                          SizedBox(
                            width: 5,
                          ),
                          Text(_requestList[index].distance.toString(), style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w600)),
                          Text('km', style: TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.w600)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('.'),
                          SizedBox(
                            width: 5,
                          ),
                          Text(_requestList[index].waitingHours.toString(), style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w600)),
                          Text('hrs', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w600)),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(
        color: Colors.white10,
      ),
    );
  }
}

class Data {
  final String name, bloodtype, gender;
  final int age, distance, waitingHours;

  Data(this.name, this.bloodtype, this.gender, this.age, this.distance,
      this.waitingHours);
}

final List<Data> _requestList = [
  Data('Mohammed', 'A+', 'Male', 22, 2, 3),
  Data('Sarah', 'B+', 'Female', 24, 3, 2),
  Data('Mohammed', 'A+', 'Male', 22, 2, 3),
  Data('Sarah', 'B+', 'Female', 24, 3, 2),
  Data('Mohammed', 'A+', 'Male', 22, 2, 3),
  Data('Sarah', 'B+', 'Female', 24, 3, 2),
];
