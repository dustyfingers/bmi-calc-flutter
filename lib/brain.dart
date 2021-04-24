import 'dart:math';

class Brain {
  final int height;
  final int weight;
  double _bmi;

  Brain({this.height, this.weight});

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight given your height.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight given your height.';
    } else {
      return 'You have a lower than normal body weight, given your height.';
    }
  }
}
