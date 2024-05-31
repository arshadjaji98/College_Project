import 'package:flutter/material.dart';

import '../../../res/constant/font/font.dart';

class PresentWidget extends StatelessWidget {
  const PresentWidget(
      {super.key,
      required this.title,
      required this.number,
      required this.icon,
      required this.color});
  final String title, number;
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: color,
            ),
            const SizedBox(
              width: 3,
            ),
            Text("$title : ",
                style: const TextStyle(
                    fontSize: 13, fontFamily: TFont.loraRegular)),
            Text(number,
                style: const TextStyle(
                    fontSize: 13, fontFamily: TFont.loraRegular)),
          ],
        ),
        SizedBox(
          height: 2,
        )
      ],
    );
  }
}
