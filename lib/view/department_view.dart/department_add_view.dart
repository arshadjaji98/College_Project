import 'package:edu_unity/res/widget/custom_textfield.dart';
import 'package:edu_unity/res/widget/round_botton.dart';
import 'package:flutter/material.dart';

class AddDepartmentView extends StatelessWidget {
  const AddDepartmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Department'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomTextField(
                title: 'Department Name *',
                hint: 'Name',
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
