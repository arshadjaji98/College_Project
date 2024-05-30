import 'package:edu_unity/res/constant/list/list.dart';
import 'package:edu_unity/view/Dashboard/widget/dashboard_cart_widget.dart';
import 'package:flutter/material.dart';

class DashboardCartGridView extends StatelessWidget {
  const DashboardCartGridView({
    super.key,
    this.crossAxisCount = 2,
    this.childAspectRatio = 2.5,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: TList.dashboardItemName.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: childAspectRatio,
        ),
        itemBuilder: (context, index) => DashboardCartWidget(
            title: TList.dashboardItemName[index],
            count: '234',
            icon: TList.dashboardItemIcons[index]));
  }
}
