import 'package:edu_unity/res/widget/round_buttton.dart';
import 'package:edu_unity/view/attendance/graph_of_attendance/attendance_graph.dart';
import 'package:edu_unity/view/attendance/take_attendance_view.dart';
import 'package:flutter/material.dart';

class StudentAttendenceDetail extends StatelessWidget {
  const StudentAttendenceDetail({super.key});

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
        padding: const EdgeInsets.all(15),
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                    child: ListView.builder(
                        itemCount: 30,
                        itemBuilder: (context, index) {
                          return studentItemCard();
                        }))
              ],
            ),
            Positioned(
              bottom: 5,
              left: 5,
              right: 5,
              child: RoundButton(
                  title: 'Take Attendance',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TakeAttendanceView()));
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget studentItemCard() {
    return Card(
      color: Colors.white,
      child: SizedBox(
        height: 70,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(color: Colors.grey.withOpacity(0.1)),
                child: const Center(
                  child: Icon(
                    Icons.person_2,
                    color: Colors.grey,
                  ),
                ),
              ),
              const Expanded(
                child: ListTile(
                  title: Text('Kashif Shah'),
                  subtitle: Text('200311'),
                ),
              ),
              const PercentageIndicator()
            ],
          ),
        ),
      ),
    );
  }
}
