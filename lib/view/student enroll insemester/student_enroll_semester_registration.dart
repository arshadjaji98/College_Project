

import 'package:edu_unity/res/widget/app_dropdown.dart';
import 'package:edu_unity/res/widget/custom_textfield.dart';
import 'package:edu_unity/res/widget/round_botton.dart';
import 'package:flutter/material.dart';

class StudentEnrollSemesterRegistrationView extends StatelessWidget {
  const StudentEnrollSemesterRegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Semester Enrollment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomTextField(
                title: 'Roll Number *',
                hint: 'Roll Number',
                keyboardType: TextInputType.number,
              ),
              const CustomTextField(
                title: 'Semester ID *',
                hint: 'Semester ID',
                keyboardType: TextInputType.number,
              ),
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
