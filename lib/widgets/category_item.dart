import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String text;
  final Function onTap;
  final Color color;
  final bool isSelected;

  CategoryItem({this.text, this.onTap, this.color, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: this.isSelected ? Colors.redAccent : Colors.transparent,
        shape: StadiumBorder(
          side: BorderSide(
            color: Colors.white,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 20.0,
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}