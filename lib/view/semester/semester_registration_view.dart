

import 'package:edu_unity/res/widget/app_dropdown.dart';
import 'package:edu_unity/res/widget/custom_textfield.dart';
import 'package:edu_unity/res/widget/round_botton.dart';
import 'package:flutter/material.dart';

class SemesterRegistrationView extends StatelessWidget {
  const SemesterRegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Semester Registration'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomTextField(
                title: 'Semester_ID *',
                hint: 'Semester ID',
                keyboardType: TextInputType.number,
              ),
              const CustomTextField(
                title: 'Semester_Name *',
                hint: 'Semester Name',
                keyboardType: TextInputType.number,
              ),
              AppDropDown(
                  title: 'Type *',
                  hint: 'Select Type',
                  items: const ['Fall', 'Spring']),
              
              const SizedBox(
                height: 20,
              ),
              RoundButton(
                  title: 'Register',
                  onTap: () {
                    Navigator.pop(context);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
