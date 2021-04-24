import 'package:flutter/material.dart';

import 'package:bmi_calculator_flutter/config/constants.dart';

class CalculateButton extends StatelessWidget {
  final Function handleCalculateButtonPressed;
  final String title;

  CalculateButton({
    @required this.title,
    @required this.handleCalculateButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handleCalculateButtonPressed,
      child: Container(
        child: Center(child: Text(title, style: kBottomButtonStyle)),
        color: kCallToActionColor,
        margin: kTopMargin,
        padding: kBottomPadding,
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
