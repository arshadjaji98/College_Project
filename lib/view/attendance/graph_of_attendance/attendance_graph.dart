import 'package:edu_unity/res/constant/color/color.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PercentageIndicator extends StatefulWidget {
  const PercentageIndicator({super.key});

  @override
  State<PercentageIndicator> createState() => _PercentageIndicatorState();
}

class _PercentageIndicatorState extends State<PercentageIndicator> {
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 25,
      lineWidth: 6,
      percent: 0.4,
      progressColor: TColors.darkBlue,
      circularStrokeCap: CircularStrokeCap.round,
      center: const Text(
        '40%',
        style: TextStyle(fontSize: 12),
      ),
    );
  }
}
