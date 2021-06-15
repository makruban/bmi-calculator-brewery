import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain{
  int weight;
  int height;
  double _bmi;

  CalculatorBrain(this.weight, this.height);

  String getResult(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);

  }

  String getCommonText(){
    if (_bmi >= 25){
      return 'Overweight';
    } else if (_bmi > 18.5){
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String geInformText(){
    if (_bmi >= 25){
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5){
      return 'You have a normal body weight. GOOD JOB!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}