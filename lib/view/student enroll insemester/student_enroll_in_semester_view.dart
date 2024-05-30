import 'package:edu_unity/res/widget/cart_widget.dart';
import 'package:edu_unity/view/semester/semester_registration_view.dart';
import 'package:edu_unity/view/semester/widget/semester_details_widget.dart';
import 'package:edu_unity/view/student%20enroll%20insemester/student_enroll_semester_registration.dart';
import 'package:edu_unity/view/student%20enroll%20insemester/widget/student_enroll_semester_details_widget.dart';
import 'package:edu_unity/view/student_enroll_course/widget/student_enroll_course_widget.dart';

import 'package:flutter/material.dart';

import '../../res/constant/color/color.dart';
import '../../res/constant/font/font.dart';

class StudentEnrollSemesterView extends StatelessWidget {
  const StudentEnrollSemesterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Semester Enrolled'),
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
                                      const StudentEnrollSemesterDetailWidget()));
                        },
                        child: const CartWidget(
                          title: 'Roll No',
                          subtitle: 'Semester ID',
                          item1: '12345',
                          item2: '12345',
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
                  builder: (context) =>
                      const StudentEnrollSemesterRegistrationView()));
        },
      ),
    );
  }
}
