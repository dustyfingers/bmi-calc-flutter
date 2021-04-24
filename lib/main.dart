import 'package:flutter/material.dart';

import 'package:bmi_calculator_flutter/routes/input_page.dart';
import 'package:bmi_calculator_flutter/config/constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home: InputPage(),
    );
  }
}
