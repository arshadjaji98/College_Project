import 'package:edu_unity/res/widget/app_dropdown.dart';
import 'package:edu_unity/res/widget/custom_textfield.dart';
import 'package:edu_unity/res/widget/round_botton.dart';
import 'package:flutter/material.dart';

class StudentRegistrationView extends StatelessWidget {
  const StudentRegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Registration'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const CustomTextField(
                    title: 'Student Roll No *',
                    hint: 'Roll No',
                    keyboardType: TextInputType.number,
                  ),
                  const CustomTextField(
                    title: 'Student Name *',
                    hint: 'Name',
                  ),
                  const CustomTextField(
                    title: 'Father Name *',
                    hint: 'F/Name',
                  ),
                  const CustomTextField(
                    title: 'Student Email *',
                    hint: 'Student Address',
                  ),
                  AppDropDown(
                      title: 'Gender *',
                      hint: 'Select Gender',
                      items: const ['Male', 'Female']),
                  const CustomTextField(
                    title: 'Session *',
                    hint: 'Session',
                  ),
                  AppDropDown(
                      title: 'College Name *',
                      hint: 'Select College',
                      items: const ['GCP1', 'GCP2', 'GCP3', 'GCP4']),
                  AppDropDown(
                      title: 'Program',
                      hint: 'Select Program',
                      items: const ['BS', 'Intermadiate']),
                  const CustomTextField(
                    title: 'Student Phone No *',
                    hint: 'S / Phone No',
                  ),
                  const CustomTextField(
                    title: 'Father Phone No *',
                    hint: 'F / Phone Number',
                  ),
                  const CustomTextField(
                    title: 'Student Address *',
                    hint: 'Student Address',
                  ),
                  const SizedBox(
                    height: 45,
                  )
                ],
              ),
            ),
            RoundButton(
                title: 'Register',
                onTap: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
