import 'package:bmi_calculator/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
  final IconData cardIcon;
  final String cardText;

  CustomColumn({this.cardIcon, this.cardText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardIcon,
          size: 50.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          cardText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
