import 'package:edu_unity/res/widget/cart_widget.dart';
import 'package:edu_unity/view/attendance/widget/student_attendance_details.dart';
import 'package:flutter/material.dart';

import '../Dashboard/dashboard_view.dart';

class StudentAttendenceView extends StatelessWidget {
  const StudentAttendenceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendence'),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 5,
          )
        ],
      ),
      drawer: DashboardView(),
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
                                      const StudentAttendenceDetail()));
                        },
                        child: const CartWidget(
                          title: 'Class',
                          subtitle: 'Department',
                          item1: 'Semester 1',
                          item2: 'CS',
                        ))))
          ],
        ),
      ),
    );
  }
}
