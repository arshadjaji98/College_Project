import 'package:flutter/material.dart';

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
      body:Column(children: [Center(child: Text('data'),)],)
    );
  }
}
