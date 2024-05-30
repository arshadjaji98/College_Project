import 'package:edu_unity/res/constant/font/font.dart';
import 'package:edu_unity/view/student_enroll_course/student_enroll_course_edit_view.dart';
import 'package:flutter/material.dart';

import '../../../res/constant/color/color.dart';

class StudentEnrollCourseDetailWidget extends StatelessWidget {
  const StudentEnrollCourseDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Details'),
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
                customCart(title: 'Roll Number', name: '12213'),
                const SizedBox(
                  height: 5,
                ),
                const Divider(),
                const SizedBox(
                  height: 5,
                ),
                customCart(title: 'Course_ID', name: '1234'),
                const SizedBox(
                  height: 5,
                ),
                const Divider(),
                const SizedBox(
                  height: 5,
                ),
                customCart(title: 'Session_ID', name: '1234'),
                const SizedBox(
                  height: 5,
                ),
                const Divider(),
                customCart(title: 'Semster_ID', name: '1234'),
                const SizedBox(
                  height: 5,
                ),
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
                                builder: (context) =>
                                    StudentEnrollCourseEditView()));
                        // showDialog(
                        //     context: context,
                        //     builder: (context) {
                        //       return SingleChildScrollView(
                        //         child: AlertDialog(
                        //           title: const Text("Edit Course Details"),
                        //           content: Column(
                        //             mainAxisSize: MainAxisSize.min,
                        //             children: [
                        //               AppDropDown(
                        //                 title: 'Course',
                        //                 hint: 'Select Course',
                        //                 items: ['A', 'B', 'C'],
                        //               ),
                        //               AppDropDown(
                        //                 title: 'Session',
                        //                 hint: 'Select Session',
                        //                 items: ['2020', '2021', '2022'],
                        //               ),
                        //               AppDropDown(
                        //                 title: 'Semester',
                        //                 hint: 'Select Select Session',
                        //                 items: ['1st', '2nd', '3rd'],
                        //               ),
                        //             ],
                        //           ),
                        //           actions: [
                        //             Row(
                        //               mainAxisAlignment:
                        //                   MainAxisAlignment.spaceAround,
                        //               children: [
                        //                 ElevatedButton(
                        //                   onPressed: () {
                        //                     Navigator.pop(context);
                        //                   },
                        //                   child: const Text("Cancel"),
                        //                 ),
                        //                 ElevatedButton(
                        //                   onPressed: () {
                        //                     Navigator.pop(context);
                        //                   },
                        //                   child: const Text("Add"),
                        //                 ),
                        //               ],
                        //             ),
                        //           ],
                        //         ),
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
