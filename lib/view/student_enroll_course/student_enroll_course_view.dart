import 'package:edu_unity/res/widget/cart_widget.dart';
import 'package:edu_unity/view/semester/semester_registration_view.dart';
import 'package:edu_unity/view/semester/widget/semester_details_widget.dart';
import 'package:edu_unity/view/session/session_registration_view.dart';
import 'package:edu_unity/view/session/widget/session_details_widget.dart';
import 'package:edu_unity/view/student_enroll_course/studnet_enroll_course_registration_view.dart';
import 'package:edu_unity/view/student_enroll_course/widget/student_enroll_course_widget.dart';
import 'package:edu_unity/view/teacher/teacher_registration_view.dart';
import 'package:edu_unity/view/teacher/widget/teacher_details_widget.dart';
import 'package:flutter/material.dart';

import '../../res/constant/color/color.dart';
import '../../res/constant/font/font.dart';

class StudentEnrolCourseView extends StatelessWidget {
  const StudentEnrolCourseView({super.key});

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
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColors.lightBlue,
        foregroundColor: Colors.white,
        child: const Text(
          "Add",
          style: TextStyle(
              color: Colors.white,
              fontFamily: TFont.ralewayBold,
              fontSize: 14,
              fontWeight: FontWeight.w700),
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const StudentEnrollCourseRegistrationView()));
        },
      ),
    );
  }
}
