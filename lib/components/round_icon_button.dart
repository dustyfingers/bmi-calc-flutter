import 'package:flutter/material.dart';

import 'package:bmi_calculator_flutter/config/constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function handleButtonPressed;

  RoundIconButton({@required this.icon, @required this.handleButtonPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      fillColor: kButtonColor,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 4.0,
      onPressed: handleButtonPressed,
    );
  }
}
