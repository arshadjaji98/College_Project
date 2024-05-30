import 'package:edu_unity/res/widget/cart_widget.dart';
import 'package:edu_unity/view/colleges/college_registration_view.dart';
import 'package:edu_unity/view/colleges/widget/college_details_widget.dart';
import 'package:edu_unity/view/courses/widget/course_detaile_widget.dart';
import 'package:edu_unity/view/department_view.dart/department_add_view.dart';
import 'package:edu_unity/view/department_view.dart/widget/department_detaile_widget.dart';
import 'package:flutter/material.dart';

import '../../res/constant/color/color.dart';
import '../../res/constant/font/font.dart';

class DepartmentView extends StatelessWidget {
  const DepartmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Department'),
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
                                      const DepartmentDetaileWidget()));
                        },
                        child: const CartWidget(
                          title: 'Name',
                          subtitle: 'Id',
                          item1: 'Computer Science',
                          item2: '2234',
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
                  builder: (context) => const AddDepartmentView()));
        },
      ),
    );
  }
}
