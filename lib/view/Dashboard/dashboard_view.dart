import 'package:edu_unity/res/constant/font/font.dart';
import 'package:edu_unity/res/widget/drawer_widget.dart';
import 'package:edu_unity/view/Dashboard/widget/dashboard_cart_grideview.dart';
import 'package:edu_unity/view/Dashboard/widget/dashboard_table_widget.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 5,
          )
        ],
      ),
      drawer: const DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DashboardCartGridView(),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Text(
              'Colleges',
              style: TextStyle(
                  fontFamily: TFont.loraRegular,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            const DashboardTableWidget(
                heading: true,
                id: '#',
                collegeName: 'College',
                district: 'District',
                gender: 'Category'),
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) => DashboardTableWidget(
                  id: '${index + 1}',
                  collegeName: 'Government College Peshawar',
                  district: 'Peshawar',
                  gender: index % 2 == 0 ? 'Male' : 'Female'),
            ))
          ],
        ),
      ),
    );
  }
}
