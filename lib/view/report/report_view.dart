import 'package:flutter/material.dart';

import '../../res/widget/drawer_widget.dart';
import '../Dashboard/dashboard_view.dart';

class ReportView extends StatelessWidget {
  const ReportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Report'),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 5,
          )
        ],
      ),
      drawer: DrawerWidget(),
    );
  }
}
