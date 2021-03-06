import 'package:bmi_calculator_flutter/components/calculate_button.dart';
import 'package:bmi_calculator_flutter/components/reusable_card.dart';
import 'package:flutter/material.dart';

import 'package:bmi_calculator_flutter/config/constants.dart';
import 'package:bmi_calculator_flutter/components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultsPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.interpretation,
  });

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
                      resultText.toUpperCase(),
                      style: kResultsTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBmiTextStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kInterpretationTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            CalculateButton(
              title: 'RE-CALCULATE',
              handleCalculateButtonPressed: () {
                Navigator.pop(context);
              },
            ),
          ]),
    );
  }
}
