import 'package:flutter/material.dart';
import '../../res/constant/color/color.dart';
import '../../res/constant/font/font.dart';
import '../../res/widget/app_dropdown.dart';
import '../../res/widget/custom_textfield.dart';

class CourseEditView extends StatelessWidget {
  const CourseEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Course Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CustomTextField(title: 'Course', hint: 'Enter Course Name'),
              const CustomTextField(
                  title: 'Course Code', hint: 'Enter Course Code'),
              AppDropDown(
                  title: 'Theory Credit Hours',
                  hint: 'Enter Theory Credit Hours',
                  items: ['3.0', '2.0', '1.0']),
              AppDropDown(
                  title: 'Practical Credit Hours',
                  hint: 'Enter Theory Credit Hours',
                  items: ['3.0', '2.0', '1.0']),
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
      ),
    );
  }
}
