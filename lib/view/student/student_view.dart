import 'package:edu_unity/res/widget/cart_widget.dart';
import 'package:edu_unity/view/student/student_detail_view.dart';
import 'package:flutter/material.dart';

import '../../res/widget/app_dropdown.dart';

class StudentView extends StatelessWidget {
  const StudentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students'),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 5,
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
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const StudentDetailView()));
                        },
                        child: const CartWidget(
                          title: 'Name',
                          subtitle: 'Roll No',
                          item1: 'Ismail Mashal Khan',
                          item2: '12321',
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
