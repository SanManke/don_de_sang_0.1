import 'package:flutter/material.dart';


class GridDashboard extends StatelessWidget {

  Item item1 = new Item(
    title: "don",
    subtitle: "save a life",
    event: "",
    img: "assets/hands-donation.webp"
  );
  Item item2 = new Item(
      title: "request",
      subtitle: "donate now",
      event: "",
      img: "assets/request.png"
  );
  Item item3 = new Item(
      title: "info",
      subtitle: "request",
      event: "info",
      img: "assets/info.png"
  );
  Item item4 = new Item(
      title: "settings",
      subtitle: "request",
      event: "info",
      img: "assets/settings.png"
  );


  @override
  Widget build(BuildContext context) {
    List<Item> myList = [item1, item2, item3, item4];
    var color = (0xffb60d29);
    return Flexible(
      child: GridView.count(
        childAspectRatio: 1.0,
        padding: EdgeInsets.only(left: 16, right: 16),
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: myList.map((data){
          return Container(
            decoration: BoxDecoration(color: Color(color),borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(data.img,width: 42,),
                SizedBox(height: 14,),
                Text(
                  data.title,
                  style: TextStyle(
                    fontFamily: 'BebasNeue',
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(height: 14,),
                Text(
                  data.subtitle,
                  style: TextStyle(
                      fontFamily: 'BebasNeue',
                      color: Colors.white38,
                      fontSize: 15,
                      fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(height: 14,),
                Text(
                  data.event,
                  style: TextStyle(
                      fontFamily: 'BebasNeue',
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
          );
        }).toList()
      ),
    );
    }
  }

  class Item{
  String title;
  String subtitle;
  String event;
  String img;
  Item({this.title, this.subtitle, this.event, this.img});
  }