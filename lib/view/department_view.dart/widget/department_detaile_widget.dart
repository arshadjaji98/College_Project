import 'package:edu_unity/res/constant/font/font.dart';
import 'package:edu_unity/view/department_view.dart/department_edit_view.dart';
import 'package:edu_unity/view/student/student_registration_view.dart';
import 'package:flutter/material.dart';

import '../../../res/constant/color/color.dart';
import '../../../res/widget/app_dropdown.dart';

class DepartmentDetaileWidget extends StatelessWidget {
  const DepartmentDetaileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Department Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customCart(title: 'Id', name: '12213'),
                const SizedBox(
                  height: 5,
                ),
                const Divider(),
                const SizedBox(
                  height: 5,
                ),
                customCart(title: 'Department', name: 'Computer Department'),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: TColors.lightBlue),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                5), // Set the border radius here
                          ), // Set the border color here
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Delete',
                          style: TextStyle(
                              color: TColors.lightBlue,
                              fontFamily: TFont.loraRegular,
                              fontSize: 16),
                        )),
                    MaterialButton(
                      height: 40,
                      minWidth: 100,
                      color: TColors.darkBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            5), // Set the border radius here
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DepartmentEditView()));
                        // showDialog(
                        //     context: context,
                        //     builder: (context) {
                        //       return AlertDialog(
                        //         title: const Text("Edit Department Details"),
                        //         content: Column(
                        //           mainAxisSize: MainAxisSize.min,
                        //           children: [
                        //             AppDropDown(
                        //               title: 'Department',
                        //               hint: 'Select Department',
                        //               items: ['CS', 'Islamiyat', 'other'],
                        //             ),
                        //           ],
                        //         ),
                        //         actions: [
                        //           Row(
                        //             mainAxisAlignment:
                        //                 MainAxisAlignment.spaceAround,
                        //             children: [
                        //               ElevatedButton(
                        //                 onPressed: () {
                        //                   Navigator.pop(context);
                        //                 },
                        //                 child: const Text("Cancel"),
                        //               ),
                        //               ElevatedButton(
                        //                 onPressed: () {
                        //                   Navigator.pop(context);
                        //                 },
                        //                 child: const Text("Add"),
                        //               ),
                        //             ],
                        //           ),
                        //         ],
                        //       );
                        //     });
                      },
                      child: const Text(
                        'Edit',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: TFont.loraRegular,
                            fontSize: 16),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customCart({title, name}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: TColors.darkBlue,
              fontFamily: TFont.loraBold,
              fontWeight: FontWeight.w600,
              fontSize: 12),
        ),
        Text(
          name,
          style: const TextStyle(
              color: Colors.black, fontFamily: TFont.latoRegular, fontSize: 12),
        ),
      ],
    );
  }
}
