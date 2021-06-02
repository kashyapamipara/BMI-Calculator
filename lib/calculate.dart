import 'package:flutter/material.dart';
import 'dart:math';
class calculator{

  calculator({this.height,this. weight});
  final int height;
  final int weight;
  double bmi;
String calc()
{

  bmi = weight / pow( height/ 100, 2);
  return bmi.toStringAsFixed(1);
}
  String getResult() {
    if (bmi >= 25) {
      return 'OverWeight !';
    } else if (bmi >= 18.5) {
      return 'Normal !';
    } else {
      return 'Underweight !';
    }
  }
  String getInterpretation() {
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }



}


