import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'const.dart';

enum Gender {male, female, notSelected}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.notSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.male ? kActiveCardColor : kInactiveCardColor,
                    cardChild: SexIconAndText(
                      icon: FontAwesomeIcons.mars, 
                      label: 'MALE',
                      ),
                    onPress: () => (){
                      setState((){
                        selectedGender = Gender.male;
                      });
                    }
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.female ? kActiveCardColor : kInactiveCardColor,
                    cardChild: SexIconAndText(
                      icon: FontAwesomeIcons.venus, 
                      label: 'FEMALE',
                      ),
                    onPress: () => (){
                      setState((){
                        selectedGender = Gender.female;
                      });
                    }
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                ],
              ),
              onPress: (){},
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      children: [
                        Text(
                          'BOTTOM1',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                  onPress: (){},
                  )
                ),
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      children: [
                        Text(
                          'BOTTOM2',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                  onPress: (){},
                  )
                ),
              ],
            ),
          ),
          Container (
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top:10),
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

