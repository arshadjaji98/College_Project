import 'package:edu_unity/res/widget/cart_widget.dart';
import 'package:edu_unity/view/courseAllotment/widget/course_allotment_detail_widget.dart';
import 'package:flutter/material.dart';

class CourseAllotmentView extends StatelessWidget {
  const CourseAllotmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Allotment'),
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
                                      const CourseAllotmentDetailWidget()));
                        },
                        child: const CartWidget(
                          title: 'Teacher ID',
                          subtitle: 'Course ID',
                          item1: '1245',
                          item2: '1234',
                        ))))
          ],
        ),
      ),
    );
  }
}
