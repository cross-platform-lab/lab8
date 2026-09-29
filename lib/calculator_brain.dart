import 'dart:math';

// BMI = cân nặng (kg) / (chiều cao (m))^2
class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double get _bmi => weight / pow(height / 100, 2);

  String calculateBMI() => _bmi.toStringAsFixed(1);

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
      return 'Cân nặng của bạn cao hơn mức bình thường. Hãy tập thể dục nhiều hơn nhé!';
    } else if (_bmi >= 18.5) {
      return 'Cân nặng của bạn bình thường. Tuyệt vời, hãy tiếp tục duy trì!';
    } else {
      return 'Cân nặng của bạn thấp hơn mức bình thường. Bạn nên ăn uống đầy đủ hơn.';
    }
  }
}
