import 'package:flutter/material.dart';

import '../../res/constant/color/color.dart';
import '../../res/constant/font/font.dart';
import '../../res/widget/app_dropdown.dart';
import '../../res/widget/custom_textfield.dart';

class CollegeEditScreen extends StatelessWidget {
  const CollegeEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit College Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CustomTextField(title: 'College', hint: 'College Name'),
            AppDropDown(
              title: 'District',
              hint: 'Select District',
              items: const ['Peshawar', 'Mardan', 'other'],
            ),
            AppDropDown(
              title: 'Gender',
              hint: 'Select Gender',
              items: const ['Male', 'Female', 'Both'],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: TColors.lightBlue),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                          color: TColors.lightBlue,
                          fontFamily: TFont.loraRegular,
                          fontSize: 16),
                    )),
                MaterialButton(
                  height: 40,
                  minWidth: 100,
                  color: TColors.darkBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Update',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: TFont.loraRegular,
                        fontSize: 16),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
