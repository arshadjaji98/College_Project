import 'package:edu_unity/res/widget/cart_widget.dart';
import 'package:edu_unity/view/semester/widget/semester_details_widget.dart';
import 'package:flutter/material.dart';

class SemesterView extends StatelessWidget {
  const SemesterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Semester'),
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
                                      const SemesterDetailWidget()));
                        },
                        child: const CartWidget(
                          title: 'Semester Name',
                          subtitle: 'ID',
                          item1: '8th Semester',
                          item2: '12345',
                        ))))
          ],
        ),
      ),
    );
  }
}
