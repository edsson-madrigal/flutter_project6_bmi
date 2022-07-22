// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_project6_bmi/icon_content.dart';
import 'package:flutter_project6_bmi/reusable_cart.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomColor = Color(0xFFEB1555);
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  // Color maleCardColour = inactiveCardColour;
  // Color femaleCardColour = inactiveCardColour;

  // void updateColour(Gender gender) {
  //   setState(() {
  //     if (gender == Gender.male) {
  //       if (maleCardColour == inactiveCardColour) {
  //         maleCardColour = activeCardColour;
  //       } else {
  //         maleCardColour = inactiveCardColour;
  //       }
  //     }
  //     if (gender == Gender.female) {
  //       if (femaleCardColour == inactiveCardColour) {
  //         femaleCardColour = activeCardColour;
  //       } else {
  //         femaleCardColour = inactiveCardColour;
  //       }
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.male
                          ? activeCardColour
                          : inactiveCardColour,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.mars, label: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                        colour: selectedGender == Gender.female
                            ? activeCardColour
                            : inactiveCardColour,
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.venus, label: 'FEMALE')),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: activeCardColour),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: activeCardColour),
                ),
                Expanded(
                  child: ReusableCard(colour: activeCardColour),
                ),
              ],
            ),
          ),
          Container(
            color: bottomColor,
            width: double.infinity,
            height: 80.0,
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}
