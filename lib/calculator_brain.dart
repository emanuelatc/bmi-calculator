import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight}) {
    // the following section is inspired by Christophe R. Patraldo
    // https://github.com/mhandersen/mha_bmi_calculator_flutter

    _bmiResult = weight / pow((height / 100), 2);
    bmi = _bmiResult.toStringAsFixed(1);

    if (_bmiResult < 18.5) {
      category = 'Underweight';
      description =
          'You have a lower than normal body weight. Consider eating more.';
    } else if (_bmiResult < 24.9) {
      category = 'Normal';
      description = 'You have a normal body weight. Good job!';
    } else if (_bmiResult < 29.9) {
      category = 'Overweight';
      description =
          'You have a higher than normal body weight. Try to exercise more.';
    } else {
      category = 'Obesity';
      description =
          'You have a very high body weight. Consult a doctor for recommended actions.';
    }
  }

  final int height;
  final int weight;
  double _bmiResult;

  String category;
  String bmi;
  String description;

  //
  // final int height;
  // final int weight;
  // double _bmi;
  //
  // String calculateBMI() {
  //   double _bmi = weight / pow(height / 100, 2);
  //   _bmi.toStringAsFixed(1);
  //   return _bmi.toStringAsFixed(1);
  // }
  //
  // String getResult() {
  //   if (_bmi >= 25) {
  //     return 'Overweight';
  //   } else if (_bmi > 18.5) {
  //     return 'Normal';
  //   } else if (_bmi < 18.5) {
  //     return 'Underweight';
  //   }
  // }
  //
  // String getInterpretation() {
  //   if (_bmi >= 25) {
  //     return 'You have a higher than normal body weight. Try to exercise more.';
  //   } else if (_bmi >= 18.5) {
  //     return 'You have a normal body weight. Good job!';
  //   } else {
  //     return 'You have a lower than normal body weight. Consider eating more.';
  //   }
  // }
}
