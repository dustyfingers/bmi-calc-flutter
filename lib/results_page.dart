import 'package:bmi_calculator_flutter/reusable_card.dart';
import 'package:flutter/material.dart';

import 'package:bmi_calculator_flutter/constants.dart';
import 'package:bmi_calculator_flutter/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    'Your Results:',
                    style: kTitleTestStyle,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Normal',
                      style: kResultsTextStyle,
                    ),
                    Text(
                      '20.2',
                      style: kBmiTextStyle,
                    ),
                    Text(
                      'Interpretation here...',
                      textAlign: TextAlign.center,
                      style: kInterpretationTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}
