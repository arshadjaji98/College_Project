import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constant/color/color.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({super.key, required this.time});
  final String time;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 3,
      shadowColor: TColors.darkBlue,
      child: Container(
        height: 42,
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.access_time),
            const SizedBox(
              width: 3,
            ),
            Text(
              time,
              style: const TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
