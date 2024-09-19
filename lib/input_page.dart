import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const double bottomContainerHeight = 80;
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReusableCard(
                    color: reusableCardColor,
                    cardChild: SexIconAndText(
                      icon: FontAwesomeIcons.mars, 
                      label: 'MALE',
                      ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: reusableCardColor,
                    cardChild: SexIconAndText(
                      icon: FontAwesomeIcons.venus, 
                      label: 'FEMALE',
                      ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(color: reusableCardColor)
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: reusableCardColor)
                ),
                Expanded(
                  child: ReusableCard(color: reusableCardColor)
                ),
              ],
            ),
          ),
          Container (
            color: bottomContainerColor,
            margin: EdgeInsets.only(top:10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

