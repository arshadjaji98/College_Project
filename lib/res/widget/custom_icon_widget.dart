import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData icons;
  final Color color;

  const CustomIcon({
    super.key,
    required this.icons,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Center(
          child: Icon(
        icons,
        color: color,
        size: 15,
      )),
    );
  }
}
