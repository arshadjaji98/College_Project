import 'package:flutter/material.dart';

import '../../res/constant/color/color.dart';
import '../../res/constant/font/font.dart';
import '../../res/widget/app_dropdown.dart';
import '../../res/widget/custom_textfield.dart';

class TeacherEditView extends StatelessWidget {
  const TeacherEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Teacher Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTextField(
                  title: 'Teacher Name', hint: "Enter Teacher Name"),
              CustomTextField(title: 'Contact#', hint: "Enter Contact Number"),
              AppDropDown(
                title: 'Mother_Dept#',
                hint: 'Select Mother Department',
                items: ['CS', 'Urdu', 'Other'],
              ),
              AppDropDown(
                title: 'Master in Subject',
                hint: 'Select Master in Subject',
                items: ['Urdu', 'English', 'other'],
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
      ),
    );
  }
}
