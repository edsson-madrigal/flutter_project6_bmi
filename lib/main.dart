// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: Color(0xFF0A0E21),
              // secondary: Colors.purple,
            ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        // textTheme: TextTheme(
        //   bodyText1: TextStyle(
        //     color: Colors.white,
        //   ),
        // ),
      ),
      home: InputPage(),
    );
  }
}
