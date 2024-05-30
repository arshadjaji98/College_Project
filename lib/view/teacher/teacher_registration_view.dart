import 'package:edu_unity/res/widget/app_dropdown.dart';
import 'package:edu_unity/res/widget/custom_textfield.dart';
import 'package:edu_unity/res/widget/round_botton.dart';
import 'package:flutter/material.dart';

class TeacherRegistrationView extends StatelessWidget {
  const TeacherRegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teacher Registration'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomTextField(
                title: 'Faculty-ID (CNIC) *',
                hint: 'Faculty-ID',
                keyboardType: TextInputType.number,
              ),
              const CustomTextField(
                title: 'Teacher Name *',
                hint: 'Name',
                keyboardType: TextInputType.number,
              ),
              const CustomTextField(
                title: 'Contact# *',
                hint: 'Contact Number',
              ),
              AppDropDown(
                  title: 'Mother_Dept *',
                  hint: 'Select Department',
                  items: const ['Computer Science', 'Urdu', 'Both']),
              const CustomTextField(
                title: 'Master in Subject(Faculty_Sub_ID) *',
                hint: 'Master in Subject',
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
