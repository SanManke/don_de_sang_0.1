import 'package:don_de_sang/profil/profil_pic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilPic(),
        SizedBox(height: 20,),
        ProfilMenu(icon: "assets/user.svg", text: "My Account", press: null,),
      ],
    );
  }
}

class ProfilMenu extends StatelessWidget {
  const ProfilMenu({
    Key key,
    @required this.text,
    @required this.icon,
    @required this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Color(0xFFF5F6F9),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 22,
              color: Color(0xffb60d29),
            ),
            SizedBox(width: 20,),
            Expanded(child: Text(text, style: TextStyle(fontFamily: 'BebasNeue', fontSize: 20),
            ),
            ),
            Icon(Icons.arrow_forward)
          ],
        ),
      ),
    );
  }
}


