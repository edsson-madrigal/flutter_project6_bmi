// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_project6_bmi/constants.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonTitle;

  const BottomButton({Key? key, required this.onTap, required this.buttonTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomColor,
        width: double.infinity,
        height: 80.0,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20),
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
