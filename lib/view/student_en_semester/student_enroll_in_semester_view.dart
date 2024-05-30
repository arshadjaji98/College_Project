import 'package:edu_unity/res/widget/cart_widget.dart';
import 'package:edu_unity/view/student_en_semester/widget/student_enroll_semester_details_widget.dart';
import 'package:flutter/material.dart';

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
    );
  }
}
