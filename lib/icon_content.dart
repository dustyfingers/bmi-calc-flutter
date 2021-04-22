import 'package:flutter/material.dart';

const textColor = 0xFF8D8E98;
const iconSize = 80.0;
const spacer = SizedBox(height: 15.0);
const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(textColor),
);

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  IconContent({this.icon, this.label});

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize,
        ),
        spacer,
        Text(label, style: labelTextStyle),
      ],
    );
  }
}
