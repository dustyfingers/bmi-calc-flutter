import 'package:flutter/material.dart';

import 'package:bmi_calculator_flutter/constants.dart';

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
          size: kIconSize,
        ),
        kSpacer,
        Text(label, style: kLabelTextStyle),
      ],
    );
  }
}
