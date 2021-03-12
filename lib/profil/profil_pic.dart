import 'package:flutter/material.dart';

class ProfilPic extends StatelessWidget {
  const ProfilPic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/woodens.jpg"),
          ),
          SizedBox(
            height: 46,
            width: 46,
          )
        ],
      ),
    );
  }
}