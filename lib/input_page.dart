import 'package:flutter/material.dart';

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
                  child: ReusableCard(colorToShow: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReusableCard(colorToShow: Color(0xFF1D1E33))
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colorToShow: Color(0xFF1D1E33))
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colorToShow: Color(0xFF1D1E33))
                ),
                Expanded(
                  child: ReusableCard(colorToShow: Color(0xFF1D1E33))
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colorToShow;

  ReusableCard({required this.colorToShow});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colorToShow,
        borderRadius: BorderRadius.circular(10), 
      ),
    );
  }
}
