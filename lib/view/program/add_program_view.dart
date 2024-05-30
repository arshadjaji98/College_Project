import 'package:edu_unity/res/widget/custom_textfield.dart';
import 'package:edu_unity/res/widget/round_botton.dart';
import 'package:flutter/material.dart';

import '../../res/widget/app_dropdown.dart';

class AddProgramView extends StatelessWidget {
  const AddProgramView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Program'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomTextField(
                title: 'Program Id *',
                hint: 'Id',
              ),
              const CustomTextField(
                title: 'Program Name *',
                hint: 'Name',
              ),
              AppDropDown(
                  title: 'Program Level',
                  hint: 'Select Program',
                  items: const ['BS', 'Intermadiate']),
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
