import 'package:edu_unity/res/widget/app_dropdown.dart';
import 'package:edu_unity/res/widget/custom_textfield.dart';
import 'package:edu_unity/res/widget/round_buttton.dart';
import 'package:flutter/material.dart';

class CollegeRegistrationView extends StatelessWidget {
  const CollegeRegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('College Registration'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomTextField(
                title: 'College Name *',
                hint: 'Name',
                keyboardType: TextInputType.number,
              ),
              const CustomTextField(
                title: 'District *',
                hint: 'District',
              ),
              AppDropDown(
                  title: 'Gender *',
                  hint: 'Select Gender',
                  items: const ['Male', 'Female', 'Both']),
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
