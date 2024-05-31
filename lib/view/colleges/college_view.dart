import 'package:edu_unity/res/widget/cart_widget.dart';
import 'package:edu_unity/res/widget/drawer_widget.dart';
import 'package:edu_unity/view/colleges/college_registration_view.dart';
import 'package:edu_unity/view/colleges/widget/college_details_widget.dart';
import 'package:flutter/material.dart';

import '../../res/constant/color/color.dart';
import '../../res/constant/font/font.dart';
import '../Dashboard/dashboard_view.dart';

class CollegeView extends StatelessWidget {
  const CollegeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colleges'),
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
                                      const CollegeDetailWidget()));
                        },
                        child: const CartWidget(
                          title: 'Name',
                          subtitle: 'District',
                          item1: 'Government College',
                          item2: 'Peshawar',
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
                  builder: (context) => const CollegeRegistrationView()));
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
