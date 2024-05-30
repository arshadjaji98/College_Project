

import 'package:edu_unity/res/widget/app_dropdown.dart';
import 'package:edu_unity/res/widget/custom_textfield.dart';
import 'package:edu_unity/res/widget/round_botton.dart';
import 'package:flutter/material.dart';

class SessionRegistrationView extends StatelessWidget {
  const SessionRegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Session Registration'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomTextField(
                title: 'Session_ID *',
                hint: 'Session ID',
                keyboardType: TextInputType.number,
              ),
              const CustomTextField(
                title: 'Year *',
                hint: 'Year',
                keyboardType: TextInputType.number,
              ),
              AppDropDown(
                  title: 'Session_Type *',
                  hint: 'Select Type',
                  items: const ['Annual', 'Fall', 'Spring']),
              const CustomTextField(
                title: 'End Date *',
                hint: 'End Date',
              ),
              
              const CustomTextField(
                title: 'Start Date *',
                hint: 'Start Date',
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
