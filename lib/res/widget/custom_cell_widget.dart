import 'package:edu_unity/res/constant/font/font.dart';
import 'package:flutter/material.dart';

class CustomTableCell extends StatelessWidget {
  final String text;
  final Color textColor;
  final FontWeight? fontWeight;

  const CustomTableCell({
    super.key,
    required this.text,
    required this.textColor,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: textColor,
              fontWeight: fontWeight,
              fontSize: 12,
              fontFamily: TFont.latoRegular),
        ),
      ),
    );
  }
}
