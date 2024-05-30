import 'package:edu_unity/res/constant/font/font.dart';
import 'package:flutter/material.dart';

import '../constant/color/color.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool loading;
  Color? btnColor;
  Color? textColor;
  RoundButton(
      {Key? key,
      required this.title,
      required this.onTap,
      this.btnColor,
      this.textColor,
      this.loading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 47,
        decoration: BoxDecoration(
            color: btnColor ?? TColors.lightBlue,
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: loading
              ? const CircularProgressIndicator(
                  strokeWidth: 3,
                  color: Colors.white,
                )
              : Text(title,
                  style: TextStyle(
                      color: textColor ?? Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: TFont.latoBold)),
        ),
      ),
    );
  }
}
