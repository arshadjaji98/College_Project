// import 'package:edu_unity/res/constant/color/color.dart';
// import 'package:edu_unity/res/constant/font/font.dart';
// import 'package:edu_unity/view/Dashboard/dashboard_view.dart';
// import 'package:edu_unity/view/auth/login_screen.dart';
// import 'package:edu_unity/view/colleges/college_view.dart';
// import 'package:edu_unity/view/courseAllotment/course_allotment_view.dart';
// import 'package:edu_unity/view/courses/course_view.dart';
// import 'package:edu_unity/view/department/department_view.dart';
// import 'package:edu_unity/view/program/program_view.dart';
// import 'package:edu_unity/view/semester/semester_view.dart';
// import 'package:edu_unity/view/session/session_view.dart';
// import 'package:edu_unity/view/student/student_view.dart';
// import 'package:edu_unity/view/studentEnrollCourse/student_enroll_course_view.dart';
// import 'package:edu_unity/view/teacher/teacher_view.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import '../../view/attendance/student_attendance_view.dart';
// import '../../view/student_en_semester/student_enroll_in_semester_view.dart';

// class DrawerWidget extends StatelessWidget {
//   const DrawerWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         // Important: Remove any padding from the ListView.
//         padding: EdgeInsets.zero,
//         children: [
//           const UserAccountsDrawerHeader(
//             decoration: BoxDecoration(
//               color: TColors.darkBlue,
//             ),
//             currentAccountPicture: CircleAvatar(
//               backgroundColor: Colors.white,
//               child: Icon(Icons.person),
//             ),
//             accountName: Text(
//               'Ismail Mashal',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontFamily: TFont.latoBold,
//                 fontSize: 12.0,
//               ),
//             ),
//             accountEmail: Text(
//               'ismailmashal0305@gmail.com',
//               style: TextStyle(
//                 color: Colors.white60, // Change this to your desired color
//                 fontFamily: TFont
//                     .loraRegular, // Optional: Use the same font family if needed
//                 fontSize: 12.0, // Optional: Set a specific font size if needed
//               ),
//             ),
//           ),
//           customTile(
//             icon: Icons.dashboard,
//             title: 'Dashboard',
//             onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const DashboardView()));
//             },
//           ),
//           customTile(
//             icon: Icons.school,
//             title: 'Colleges',
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => const CollegeView()));
//             },
//           ),
//           customTile(
//             icon: Icons.apartment,
//             title: 'Departments',
//             onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const DepartmentView()));
//             },
//           ),
//           customTile(
//             icon: Icons.person_3,
//             title: 'Teachers',
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => const TeacherView()));
//             },
//           ),
//           customTile(
//             icon: CupertinoIcons.person,
//             title: 'Students',
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => const StudentView()));
//             },
//           ),
//           customTile(
//             icon: CupertinoIcons.scope,
//             title: 'Sessions',
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => const SessionView()));
//             },
//           ),
//           customTile(
//             icon: Icons.school_sharp,
//             title: 'Semesters',
//             onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const SemesterView()));
//             },
//           ),
//           customTile(
//             icon: Icons.assignment,
//             title: 'Enroll Courses',
//             onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const StudentEnrolCourseView()));
//             },
//           ),
//           customTile(
//             icon: Icons.event,
//             title: 'Enroll In Semesters',
//             onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const StudentEnrollSemesterView()));
//             },
//           ),
//           customTile(
//             icon: Icons.class_,
//             title: 'Courses',
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => const CourseView()));
//             },
//           ),
//           customTile(
//             icon: Icons.library_books,
//             title: 'Programs',
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => const ProgramView()));
//             },
//           ),
//           customTile(
//             icon: Icons.event_available,
//             title: 'Course Allotments',
//             onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const CourseAllotmentView()));
//             },
//           ),
//           customTile(
//             icon: Icons.how_to_reg,
//             title: 'Attendance',
//             onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const StudentAttendenceView()));
//             },
//           ),
//           customTile(
//             icon: Icons.description,
//             title: 'Report',
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => const StudentView()));
//             },
//           ),
//           customTile(
//             icon: Icons.logout,
//             title: 'LogOut',
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => const LoginScreen()));
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   Widget customTile({icon, title, required onTap}) {
//     return ListTile(
//       leading: Icon(icon),
//       title: Text(
//         title,
//         style: const TextStyle(fontFamily: TFont.latoRegular),
//       ),
//       onTap: onTap,
//     );
//   }
// }
import 'package:edu_unity/res/constant/color/color.dart';
import 'package:edu_unity/res/constant/font/font.dart';
import 'package:edu_unity/view/Dashboard/dashboard_view.dart';
import 'package:edu_unity/view/auth/login_screen.dart';
import 'package:edu_unity/view/colleges/college_view.dart';
import 'package:edu_unity/view/courseAllotment/course_allotment_view.dart';
import 'package:edu_unity/view/courses/course_view.dart';
import 'package:edu_unity/view/department/department_view.dart';
import 'package:edu_unity/view/program/program_view.dart';
import 'package:edu_unity/view/report/report_view.dart';
import 'package:edu_unity/view/semester/semester_view.dart';
import 'package:edu_unity/view/session/session_view.dart';
import 'package:edu_unity/view/student/student_view.dart';
import 'package:edu_unity/view/studentEnrollCourse/student_enroll_course_view.dart';
import 'package:edu_unity/view/teacher/teacher_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view/attendance/student_attendance_view.dart';
import '../../view/student_en_semester/student_enroll_in_semester_view.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({super.key});

  final DrawerController drawerController = Get.put(DrawerController());
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: TColors.darkBlue,
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
            accountName: Text(
              'Ismail Mashal',
              style: TextStyle(
                color: Colors.white,
                fontFamily: TFont.latoBold,
                fontSize: 12.0,
              ),
            ),
            accountEmail: Text(
              'ismailmashal0305@gmail.com',
              style: TextStyle(
                color: Colors.white60, // Change this to your desired color
                fontFamily: TFont
                    .loraRegular, // Optional: Use the same font family if needed
                fontSize: 12.0, // Optional: Set a specific font size if needed
              ),
            ),
          ),
          buildListTile(context, 0, Icons.dashboard, 'Dashboard'),
          buildListTile(context, 1, Icons.school, 'Colleges'),
          buildListTile(context, 2, Icons.apartment, 'Department'),
          buildListTile(context, 3, Icons.person_3, 'Teachers'),
          buildListTile(context, 4, CupertinoIcons.person, 'Students'),
          buildListTile(context, 5, CupertinoIcons.scope, 'Sessions'),
          buildListTile(context, 6, Icons.school_sharp, 'Semester'),
          buildListTile(context, 7, Icons.assignment, 'Enroll Courses'),
          buildListTile(context, 8, Icons.event, 'Enroll In Semesters'),
          buildListTile(context, 9, Icons.class_, 'Courses'),
          buildListTile(context, 10, Icons.library_books, 'Programs'),
          buildListTile(
              context, 11, Icons.event_available, 'Course Allotments'),
          buildListTile(context, 12, Icons.how_to_reg, 'Attendance'),
          buildListTile(context, 13, Icons.description, 'Report'),
          buildListTile(context, 14, Icons.logout, 'Logout'),
        ],
      ),
    );
  }

  Widget buildListTile(context, int index, IconData icon, String title) {
    return Obx(
      () => ListTile(
        leading: Icon(
          icon,
        ),
        title: Text(
          title,
          style: const TextStyle(fontFamily: TFont.latoRegular),
        ),
        selectedTileColor: TColors.lightBlue.withOpacity(0.1),
        selected: drawerController.selectedIndex.value == index,
        onTap: () {
          drawerController.setSelectedIndex(index);
          // Add navigation logic here based on the index
          // For example:
          if (index == 0) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => DashboardView()));
          } else if (index == 1) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => CollegeView()));
            // Get.offAll(const CollegeView());
          } else if (index == 2) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => DepartmentView()));
            // Get.to(const DepartmentView());
          } else if (index == 3) {
            Get.to(const TeacherView());
          } else if (index == 4) {
            Get.to(const StudentView());
          } else if (index == 5) {
            Get.to(const SessionView());
          } else if (index == 6) {
            Get.to(const SemesterView());
          } else if (index == 7) {
            Get.to(const StudentEnrollCourseView());
          } else if (index == 8) {
            Get.to(const StudentEnrollSemesterView());
          } else if (index == 9) {
            Get.to(const CourseView());
          } else if (index == 10) {
            Get.to(const ProgramView());
          } else if (index == 11) {
            Get.to(const CourseAllotmentView());
          } else if (index == 12) {
            Get.to(const StudentAttendenceView());
          } else if (index == 13) {
            Get.to(const ReportView());
          } else if (index == 14) {
            Get.to(const LoginScreen());
          } else if (index == 15) {
            Get.to(const CollegeView());
          }
        },
      ),
    );
  }
}

class DrawerController extends GetxController {
  var selectedIndex = 0.obs;

  void setSelectedIndex(int index) {
    selectedIndex.value = index;
  }
}
