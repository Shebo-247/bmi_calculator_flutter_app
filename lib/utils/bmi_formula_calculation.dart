import 'dart:math';

import 'package:flutter/material.dart';

class BMIFormulaCalculation {
  final int height, weight;
  double _bmi;
  Color _resultColor;
  String _result, _interpretation;

  BMIFormulaCalculation({this.height, this.weight});

  String getBMIValue() {
    return _bmi.toStringAsFixed(1);
  }
  
  Color getResultColor(){
    return _resultColor;
  }
  
  String getResult(){
    return _result;
  }

  String getInterpretation(){
    return _interpretation;
  }

  void updateValues() {

    _bmi = weight / pow(height / 100, 2);
    
    if (_bmi < 18.5) {
      _resultColor = Color(0xFFC55956);
      _result = 'Underweight';
      _interpretation = 'You are lower than normal body weight, You can eat a bit more.';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      _resultColor = Color(0xFF00BD01);
      _result = 'Normal';
      _interpretation = 'You have a normal body weight. Good job!';
    } else if (_bmi >= 25 && _bmi <= 30) {
      _resultColor = Color(0xFFFFFF66);
      _result = 'Overweight';
      _interpretation = 'You are heigher than normal body weight, Try to exercise more.';
    } else if (_bmi > 30) {
      _resultColor = Color(0xFFFE9900);
      _result = 'Obesity';
      _interpretation = 'You are too heigher body weight, You should visit a doctor.';
    }
  }
}
