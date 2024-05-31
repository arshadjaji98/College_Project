import 'package:edu_unity/res/widget/cart_widget.dart';
import 'package:edu_unity/view/courses/widget/course_detaile_widget.dart';
import 'package:flutter/material.dart';

import '../../res/widget/drawer_widget.dart';
import '../Dashboard/dashboard_view.dart';

class CourseView extends StatelessWidget {
  const CourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Courses'),
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
                                      const CourseDetailWidget()));
                        },
                        child: const CartWidget(
                          title: 'Course',
                          subtitle: 'Code',
                          item1: 'DSA',
                          item2: '2234',
                        ))))
          ],
        ),
      ),
    );
  }
}
