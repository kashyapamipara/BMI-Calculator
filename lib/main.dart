import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';
import 'input.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
     initialRoute:input.id,
      routes: {
        input.id:(context)=>input(),result.id:(context)=>result(),
      },
    );
  }
}
