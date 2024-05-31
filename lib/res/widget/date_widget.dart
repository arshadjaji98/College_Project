import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constant/color/color.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({super.key, required this.date});
  final String date;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shadowColor: TColors.darkBlue,
      color: Colors.white,
      child: Container(
        height: 42,
        padding: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.calendar_month),
            SizedBox(
              width: 3,
            ),
            Text(
              date,
              style: const TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
