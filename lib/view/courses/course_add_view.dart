import 'package:edu_unity/res/widget/app_dropdown.dart';
import 'package:edu_unity/res/widget/custom_textfield.dart';
import 'package:edu_unity/res/widget/round_botton.dart';
import 'package:flutter/material.dart';

class CourseRegistorView extends StatelessWidget {
  const CourseRegistorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Course'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomTextField(
                title: 'Course Name *',
                hint: 'Name',
                keyboardType: TextInputType.number,
              ),
              const CustomTextField(
                title: 'Course Code *',
                hint: 'Code',
              ),
              const CustomTextField(
                title: 'Theory Credit Hours *',
                hint: 'Hours',
                keyboardType: TextInputType.number,
              ),
              const CustomTextField(
                title: 'Practical Credit Hours *',
                hint: 'Hours',
              ),
              const SizedBox(
                height: 20,
              ),
              RoundButton(
                  title: 'Add',
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
