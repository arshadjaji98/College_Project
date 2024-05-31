import 'package:edu_unity/res/widget/cart_widget.dart';
import 'package:edu_unity/view/session/widget/session_details_widget.dart';
import 'package:flutter/material.dart';

import '../../res/widget/drawer_widget.dart';
import '../Dashboard/dashboard_view.dart';

class SessionView extends StatelessWidget {
  const SessionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Session'),
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
                                      const SessionDetailWidget()));
                        },
                        child: const CartWidget(
                          title: 'Year',
                          subtitle: 'ID',
                          item1: '2024',
                          item2: '1234',
                        ))))
          ],
        ),
      ),
    );
  }
}
