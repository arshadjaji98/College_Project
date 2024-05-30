import 'package:edu_unity/res/widget/app_dropdown.dart';
import 'package:edu_unity/res/widget/custom_textfield.dart';
import 'package:edu_unity/res/widget/round_botton.dart';
import 'package:flutter/material.dart';

class CourseAllotmentRegistrationView extends StatelessWidget {
  const CourseAllotmentRegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Allotment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomTextField(
                title: 'Teacher_ID (CNIC) (FK) *',
                hint: 'Teacher ID',
                keyboardType: TextInputType.number,
              ),
              const CustomTextField(
                title: 'Course_ID (FK) *',
                hint: 'Course ID',
                keyboardType: TextInputType.number,
              ),
              // AppDropDown(
              //     title: 'Type *',
              //     hint: 'Select Type',
              //     items: const ['Fall', 'Spring']),
              const CustomTextField(
                title: 'Session_ID (FK) *',
                hint: 'Session ID',
                keyboardType: TextInputType.number,
              ),
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
