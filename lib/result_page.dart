import 'package:flutter/material.dart';
import 'const.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Your Result'),
          Text('23'),
          Text('Normal'),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
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
