import 'package:edu_unity/res/constant/font/font.dart';
import 'package:flutter/material.dart';
import '../../../res/constant/color/color.dart';

class SessionDetailWidget extends StatelessWidget {
  const SessionDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Session Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customCart(title: 'Session_ID', name: '12213'),
                const SizedBox(
                  height: 5,
                ),
                const Divider(),
                const SizedBox(
                  height: 5,
                ),
                customCart(title: 'Year', name: '2024'),
                const SizedBox(
                  height: 5,
                ),
                const Divider(),
                const SizedBox(
                  height: 5,
                ),
                customCart(title: 'Session Type', name: 'Annual'),
                const SizedBox(
                  height: 5,
                ),
                const Divider(),
                const SizedBox(
                  height: 5,
                ),
                customCart(title: 'End Date', name: '2024'),
                const SizedBox(
                  height: 5,
                ),
                const Divider(),
                const SizedBox(
                  height: 5,
                ),
                customCart(title: 'Start Date', name: '2022'),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customCart({title, name}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: TColors.darkBlue,
              fontFamily: TFont.loraBold,
              fontWeight: FontWeight.w600,
              fontSize: 12),
        ),
        Text(
          name,
          style: const TextStyle(
              color: Colors.black, fontFamily: TFont.latoRegular, fontSize: 12),
        ),
      ],
    );
  }
}
