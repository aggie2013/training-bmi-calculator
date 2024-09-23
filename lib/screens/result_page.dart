import 'package:flutter/material.dart';
import '../const.dart';
import '../components/reusable_card.dart';

class ResultArguments {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultArguments(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});
}

class ResultPage extends StatelessWidget {
  final ResultArguments args;

  ResultPage({required this.args});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: resultTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(args.bmiResult, style: resultTextStyle),
                  Text(args.resultText, style: resultNumberTextStyle),
                  Text(args.interpretation,
                      style: resultInterpretationTextStyle,
                      textAlign: TextAlign.center),
                ],
              ),
              onPress: () {},
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
            padding: EdgeInsets.only(bottom: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              child: Center(
                  child: Text('RE-CALCULATE', style: calculateButtonTextStyle)),
            ),
          ),
        ],
      ),
    );
  }
}
