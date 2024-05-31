import 'package:edu_unity/res/widget/cart_widget.dart';
import 'package:edu_unity/view/studentEnrollCourse/widget/student_enroll_course_widget.dart';
import 'package:flutter/material.dart';

import '../../res/widget/drawer_widget.dart';
import '../Dashboard/dashboard_view.dart';

class StudentEnrollCourseView extends StatelessWidget {
  const StudentEnrollCourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Enroll in Course '),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 5,
          )
        ],
      ),
      drawer: DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const StudentEnrollCourseDetailWidget()));
                        },
                        child: const CartWidget(
                          title: 'Roll No',
                          subtitle: 'Course ID',
                          item1: '1234',
                          item2: '1234',
                        ))))
          ],
        ),
      ),
    );
  }
}
