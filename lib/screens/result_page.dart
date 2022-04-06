import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/resuable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    Key? key, 
    required this.bmi, 
    required this.resultText, 
    required this.resultDesc,
  }) : super(key: key);

  final String bmi;
  final String resultText;
  final String resultDesc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculation'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(left: 10, bottom: 10.0),
            child: const Text(
              'Your Result',
              style: titleTextStyle,
            ),
          )),
          Expanded(
            flex: 5,
            child: ResuableCard(
              colour: activeCardColor,
              cardChild: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: resultTextStyle,
                    ),
                    Text(
                      bmi,
                      style: bmiTextStyle,
                    ),
                    Text(
                      resultDesc,
                      style: bodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            title: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
