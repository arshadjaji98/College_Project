import 'package:flutter/material.dart';

import '../../res/constant/color/color.dart';
import '../../res/constant/font/font.dart';
import '../../res/widget/app_dropdown.dart';
import '../../res/widget/custom_textfield.dart';

class StudentEditView extends StatelessWidget {
  const StudentEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Student Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTextField(
                  title: 'Student Name', hint: "Enter Student Name"),
              CustomTextField(
                  title: 'Father Name', hint: "Enter Father Number"),
              AppDropDown(
                title: 'Gender',
                hint: 'Select Gender',
                items: ['Male', 'Female'],
              ),
              CustomTextField(title: 'Session', hint: "Enter Session"),
              CustomTextField(
                  title: 'College Name', hint: "Enter College Number"),
              CustomTextField(title: 'Program', hint: "Enter Program"),
              CustomTextField(
                  title: 'S/Phone Number', hint: "Enter Student Phone Number"),
              CustomTextField(
                  title: 'F/Phone Number', hint: "Enter Father Phone Number"),
              CustomTextField(
                  title: 'S/Address', hint: "Enter Student Address"),
              CustomTextField(title: 'S/Email', hint: "Enter Student Email"),
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
