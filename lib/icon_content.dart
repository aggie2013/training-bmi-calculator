import 'package:flutter/material.dart';
import 'const.dart';

class SexIconAndText extends StatelessWidget {
  final IconData icon;
  final String label;

  SexIconAndText({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80),
        SizedBox(height:15),
        Text(label, style: labelTextStyle),
      ],
    );
  }
}