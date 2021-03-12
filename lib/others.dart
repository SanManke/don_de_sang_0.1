ListView.builder(
itemCount: 5,
itemBuilder: (BuildContext context, int index){
if (index == 0) {
return SizedBox(height: 15,);
}else if (index == 3){
return SizedBox(height: 15,);
}
return Container(
alignment: Alignment.center,
margin: EdgeInsets.all(10.0),
width: double.infinity,
height: 80.0,
decoration: BoxDecoration(
color: Colors.red,
borderRadius: BorderRadius.circular(10.0),
border: Border.all(color: Colors.black26)
),
);
}
),




Center(
child: Column(
children: <Widget>[
Container(
height: 50,
width: 50,
margin: EdgeInsets.only(top: 50.0),
child: Stack(
children: <Widget>[
CircleAvatar(
radius: 500,
backgroundImage: AssetImage('assets/woodens.jpg'),
),
],
),
),
SizedBox(height: 20),
Text(
'Woodens Gregoire Fanfan',
style: TextStyle(fontFamily: 'BebasNeue'),
),
SizedBox(height: 10),
Text(
'+509 32151575',
),
],
),
),