import 'package:bmi_calculator/utils/constants.dart';
import 'package:bmi_calculator/widgets/custom_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(ResultPage());

class ResultPage extends StatelessWidget {
  final String resultText, bmiResult, interpretation;
  final Color resultColor;

  ResultPage(
      {@required this.resultText,
      @required this.bmiResult,
      @required this.interpretation,
      @required this.resultColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Your Result',
                    style: kNumberTextStyle,
                  ),
                  Expanded(
                    child: CustomCard(
                      color: kCardActiveColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              resultText.toUpperCase(),
                              style: kLabelTextStyle.copyWith(
                                  color: resultColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              bmiResult,
                              style: kNumberTextStyle.copyWith(
                                fontSize: 90.0,
                              ),
                            ),
                            Text(
                              'Normal BMI Range :',
                              style: kLabelTextStyle.copyWith(
                                  color: Colors.grey, fontSize: 20.0),
                            ),
                            Text(
                              '18.5 - 25 kg/m2',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                            Text(
                              interpretation,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: resultColor
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 70.0,
            child: FlatButton(
              child: Text(
                'RE-CALCULATE YOUR BMI',
                style: kLabelTextStyle.copyWith(fontSize: 22.0),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
