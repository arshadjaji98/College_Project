import 'package:edu_unity/res/constant/font/font.dart';
import 'package:edu_unity/view/colleges/college_edit_screen.dart';
import 'package:flutter/material.dart';

import '../../../res/constant/color/color.dart';

class CollegeDetailWidget extends StatelessWidget {
  const CollegeDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('College Detail'),
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
                customCart(
                    title: 'College', name: 'Government College Peshawar'),
                const SizedBox(
                  height: 5,
                ),
                const Divider(),
                const SizedBox(
                  height: 5,
                ),
                customCart(title: 'District', name: 'Peshawar'),
                const SizedBox(
                  height: 5,
                ),
                const Divider(),
                const SizedBox(
                  height: 5,
                ),
                customCart(title: 'Gender', name: 'Male'),
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
                                builder: (context) => CollegeEditScreen()));
                        //               showDialog(
                        // context: context,
                        // builder: (context) {
                        //   return AlertDialog(
                        //     title: const Text("Edit College Details"),
                        //     content: Column(
                        //       mainAxisSize: MainAxisSize.min,
                        //       children: [
                        //         const CustomTextField(title: 'College', hint: 'College Name'),
                        //         AppDropDown(title: 'Distric', hint: 'Select Distric', items: ['Peshawar','Mardan','other']
                        //         ,),
                        //         AppDropDown(title: 'Gender', hint: 'Select Gender', items: ['Male','Female']
                        //         ,),

                        //       ],
                        //     ),
                        //     actions: [
                        //       Row(
                        //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //         children: [
                        //           ElevatedButton(
                        //             onPressed: () {
                        //               Navigator.pop(context);
                        //             },
                        //             child: const Text("Cancel"),
                        //           ),
                        //           ElevatedButton(
                        //             onPressed: () {
                        //               Navigator.pop(context);
                        //             },
                        //             child: const Text("Add"),
                        //           ),

                        //         ],
                        //       ),
                        //     ],
                        //   );});
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
