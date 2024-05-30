import 'package:edu_unity/res/constant/font/font.dart';
import 'package:edu_unity/view/course%20allotment/course_allotment_edit_view.dart';
import 'package:edu_unity/view/course%20allotment/course_allotment_registration_view.dart';
import 'package:edu_unity/view/semester/semester_registration_view.dart';
import 'package:edu_unity/view/session/session_registration_view.dart';
import 'package:edu_unity/view/student/student_registration_view.dart';
import 'package:flutter/material.dart';

import '../../../res/constant/color/color.dart';
import '../../../res/widget/app_dropdown.dart';
import '../../../res/widget/custom_textfield.dart';

class CourseAllotmentDetailWidget extends StatelessWidget {
  const CourseAllotmentDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Allotment Details'),
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
                customCart(title: 'Teacher_ID', name: '1234'),
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
                                    CourseAllotmentEditScreen()));
                        // showDialog(
                        //     context: context,
                        //     builder: (context) {
                        //       return AlertDialog(
                        //         title:
                        //             const Text("Edit Course Allotment Details"),
                        //         content: const Column(
                        //           mainAxisSize: MainAxisSize.min,
                        //           children: [
                        //             CustomTextField(
                        //                 title: 'Teacher',
                        //                 hint: 'Enter Teacher Name'),
                        //             CustomTextField(
                        //                 title: 'Course',
                        //                 hint: 'Enter Course Name'),
                        //             CustomTextField(
                        //                 title: 'Session',
                        //                 hint: 'Enter Session'),
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
