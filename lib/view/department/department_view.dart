import 'package:flutter/material.dart';

import '../../res/constant/color/color.dart';
import '../../res/constant/font/font.dart';
import '../../res/widget/cart_widget.dart';
import '../../res/widget/drawer_widget.dart';
import 'department_add_view.dart';
import 'widget/department_detaile_widget.dart';

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
                                      const DepartmentDetailWidget()));
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
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: TColors.lightBlue,
        foregroundColor: Colors.white,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AddDepartmentView()));
        },
        label: const Text(
          "Add",
          style: TextStyle(
              color: Colors.white,
              fontFamily: TFont.ralewayBold,
              fontSize: 14,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
