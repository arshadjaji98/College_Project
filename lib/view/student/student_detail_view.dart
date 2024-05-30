import 'package:edu_unity/res/constant/font/font.dart';
import 'package:flutter/material.dart';

import '../../res/constant/color/color.dart';

class StudentDetailView extends StatelessWidget {
  const StudentDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                customCart(title: 'Student Roll No', name: '244545'),
                const SizedBox(height: 5),
                const Divider(),
                const SizedBox(
                  height: 5,
                ),
                customCart(title: 'Student Name', name: 'Ismail Khan'),
                const SizedBox(height: 5),
                const Divider(),
                const SizedBox(height: 5),
                customCart(title: 'Father Name', name: 'Khan G'),
                const SizedBox(height: 5),
                const Divider(),
                const SizedBox(height: 5),
                customCart(title: 'Gender', name: 'Male'),
                const SizedBox(height: 5),
                const Divider(),
                const SizedBox(height: 5),
                customCart(title: 'Session', name: '2019 / 2024'),
                const SizedBox(height: 5),
                const Divider(),
                const SizedBox(height: 5),
                customCart(title: 'College Name', name: 'Ali Gohar College'),
                const SizedBox(height: 5),
                const Divider(),
                const SizedBox(height: 5),
                customCart(title: 'Program', name: 'BS CS'),
                const SizedBox(height: 5),
                const Divider(),
                const SizedBox(height: 5),
                customCart(title: 'S/Phone No', name: '030580000035'),
                const SizedBox(height: 5),
                const Divider(),
                const SizedBox(height: 5),
                customCart(title: 'F/Phone No', name: '03038865056'),
                const SizedBox(height: 5),
                const Divider(),
                const SizedBox(height: 5),
                customCart(title: 'S/Address', name: 'Saddar Peshawar'),
                const SizedBox(height: 5),
                const Divider(),
                const SizedBox(height: 5),
                customCart(
                    title: 'S/Email', name: 'ismailmashal1999@gmail.com'),
                const SizedBox(height: 30),
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
