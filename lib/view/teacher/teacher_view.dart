import 'package:edu_unity/res/widget/app_dropdown.dart';
import 'package:edu_unity/res/widget/cart_widget.dart';
import 'package:edu_unity/view/teacher/widget/teacher_details_widget.dart';
import 'package:flutter/material.dart';

class TeacherView extends StatelessWidget {
  const TeacherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teacher/Faculty'),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
        child: Column(
          children: [
            Row(children: [
              Expanded(
                child: AppDropDown(
                  title: '',
                  hint: 'Select Colleges',
                  items: const ['GCP', 'Nowshera', 'Superier Science'],
                ),
              ),
            ]),
            Expanded(
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const TeacherDetailWidget()));
                        },
                        child: const CartWidget(
                          title: 'Name',
                          subtitle: 'ID',
                          item1: 'Prof ABC',
                          item2: '1234',
                        ))))
          ],
        ),
      ),
    );
  }
}
