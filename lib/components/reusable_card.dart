import 'package:flutter/material.dart';

import 'package:bmi_calculator_flutter/config/constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, this.cardChild, this.onPress});

  // final keyword makes this property immutable
  final Color color;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: kStandardMargin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
      ),
    );
  }
}
