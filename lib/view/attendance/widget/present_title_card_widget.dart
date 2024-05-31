import 'package:flutter/material.dart';

import '../../../res/constant/color/color.dart';
import 'present_widget.dart';

class PresentTitleCardWidget extends StatelessWidget {
  const PresentTitleCardWidget(
      {super.key,
      required this.present,
      required this.absent,
      required this.leave});
  final String present, absent, leave;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 3,
        shadowColor: TColors.darkBlue,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PresentWidget(
                  title: 'Absent',
                  number: absent,
                  icon: Icons.close,
                  color: Colors.red),
              PresentWidget(
                  title: 'Present',
                  number: present,
                  icon: Icons.check,
                  color: Colors.green),
              PresentWidget(
                  title: 'Leave',
                  number: leave,
                  icon: Icons.thermostat,
                  color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
