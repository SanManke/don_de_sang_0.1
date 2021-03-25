import 'package:flutter/material.dart';

class ListSpontaneous extends StatefulWidget {
  @override
  _ListSpontaneousState createState() => _ListSpontaneousState();
}

class _ListSpontaneousState extends State<ListSpontaneous> {

  var listName = [
    "Woodens Fanfan",
    "Didier Ganthier",
    "Dany Augustin",
    "Vedel Reperem",
  ];

  var description = [
    "AB+",
    "A+",
    "O+",
    "AB-",
  ];

  var imgList = [
    "assets/woodens.jpg",
    "assets/didier.jpeg",
    "assets/dany.jpeg",
    "assets/vedel.png",
  ];

  var listHopital = [
    "Hopital Espoir",
    "Hopital de fermathe",
    "Hopital de Cap",
    "Hopital des cayes"
  ];

  var phoneNumber = [
    "32151575",
    "32171717",
    "43797797",
    "24335676"
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.7;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb60d29),
        title: Text('Spontaneous'),
        elevation: 10,
      ),
      body: ListView.builder(
          itemCount: imgList.length,
          itemBuilder: (context, index){
            return GestureDetector(
              onTap: () {
                showDialogFunc(context, imgList[index], listName[index], description[index], listHopital[index], phoneNumber[index]);
              },
              child: Card(
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: Image.asset(imgList[index]),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(listName[index],

                          ),

                        ],
                      ),
                    ),
                  ],
                )
              ),
            );
          }
      ),
    );
  }
}

showDialogFunc(context, img, title , desc, hop , phone){
  return showDialog(
    context: context,
    builder: (context){
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
            ),
            padding: EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width * 0.8,
            height: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(img,
                    width: 150,
                    height: 150,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: "BebasNeue",
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  desc,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xffb60d29),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10,),
                Text(
                  hop,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87
                  ),
                ),
                SizedBox(height: 10,),
                Text(phone,
                style: TextStyle(color: Color(0xffb60d29),),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10,),
                  width: double.infinity,
                  child: RaisedButton(
                    elevation: 5,
                    onPressed: () {},
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    color: Colors.white,
                    child: Text(
                      'CALL',
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
          ),
        ),
      );
    }
  );
}
