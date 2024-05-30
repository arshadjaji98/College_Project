import 'package:edu_unity/res/constant/color/color.dart';
import 'package:flutter/material.dart';

import '../../../res/widget/custom_cell_widget.dart';

class DashboardTableWidget extends StatelessWidget {
  const DashboardTableWidget(
      {required this.id,
      required this.collegeName,
      this.heading = false,
      super.key,
      required this.district,
      required this.gender});

  final String id;
  final String collegeName;

  final String district;
  final String gender;
  final bool heading;

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(4),
        2: FlexColumnWidth(2),
        3: FlexColumnWidth(1.5),
      },
      border: TableBorder.all(
        // borderRadius: BorderRadius.circular(5),
        color: Colors.grey.shade300,
      ),
      defaultColumnWidth: const FlexColumnWidth(0.5),
      children: [
        TableRow(
          decoration: BoxDecoration(
            color: heading ? TColors.darkBlue : Colors.white,
          ),
          children: [
            CustomTableCell(
              text: id,
              textColor: heading ? Colors.white : Colors.black,
              fontWeight: heading ? FontWeight.bold : FontWeight.normal,
            ),
            CustomTableCell(
              text: collegeName,
              textColor: heading ? Colors.white : Colors.black,
              fontWeight: heading ? FontWeight.bold : FontWeight.normal,
            ),
            CustomTableCell(
              text: district,
              textColor: heading ? Colors.white : Colors.black,
              fontWeight: heading ? FontWeight.bold : FontWeight.normal,
            ),
            CustomTableCell(
              text: gender,
              textColor: heading ? Colors.white : Colors.black,
              fontWeight: heading ? FontWeight.bold : FontWeight.normal,
            ),
          ],
        ),
      ],
    );
  }
}
