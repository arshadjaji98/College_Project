import 'package:edu_unity/res/widget/cart_widget.dart';
import 'package:edu_unity/view/program/widget/program_detaile_widget.dart';
import 'package:flutter/material.dart';

class ProgramView extends StatelessWidget {
  const ProgramView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Programs'),
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
                                      const ProgramDetailWidget()));
                        },
                        child: const CartWidget(
                          title: 'Name',
                          subtitle: 'Level',
                          item1: 'Computer Science',
                          item2: 'BS',
                        ))))
          ],
        ),
      ),
    );
  }
}
