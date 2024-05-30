import 'package:flutter/material.dart';

import '../../res/constant/color/color.dart';
import '../../res/constant/font/font.dart';
import '../../res/widget/app_dropdown.dart';
import '../../res/widget/custom_textfield.dart';

class CourseAllotmentEditScreen extends StatelessWidget {
  const CourseAllotmentEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Course Allotment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextField(title: 'Teacher', hint: 'Enter Teacher Name'),
            CustomTextField(title: 'Course', hint: 'Enter Course Name'),
            CustomTextField(title: 'Session', hint: 'Enter Session'),
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
