import 'package:edu_unity/res/constant/color/color.dart';
import 'package:edu_unity/res/constant/font/font.dart';
import 'package:edu_unity/view/Dashboard/dashboard_view.dart';
import 'package:edu_unity/view/auth/login_screen.dart';
import 'package:edu_unity/view/colleges/college_view.dart';
import 'package:edu_unity/view/courseAllotment/course_allotment_view.dart';
import 'package:edu_unity/view/courses/course_view.dart';
import 'package:edu_unity/view/department/department_view.dart';
import 'package:edu_unity/view/program/program_view.dart';
import 'package:edu_unity/view/semester/semester_view.dart';
import 'package:edu_unity/view/session/session_view.dart';
import 'package:edu_unity/view/student/student_view.dart';
import 'package:edu_unity/view/studentEnrollCourse/student_enroll_course_view.dart';
import 'package:edu_unity/view/teacher/teacher_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../view/attendance/student_attendance_view.dart';
import '../../view/student_en_semester/student_enroll_in_semester_view.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

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
          customTile(
            icon: Icons.dashboard,
            title: 'Dashboard',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DashboardView()));
            },
          ),
          customTile(
            icon: Icons.school,
            title: 'Colleges',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CollegeView()));
            },
          ),
          customTile(
            icon: Icons.apartment,
            title: 'Departments',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DepartmentView()));
            },
          ),
          customTile(
            icon: Icons.person_3,
            title: 'Teachers',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TeacherView()));
            },
          ),
          customTile(
            icon: CupertinoIcons.person,
            title: 'Students',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const StudentView()));
            },
          ),
          customTile(
            icon: CupertinoIcons.scope,
            title: 'Sessions',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SessionView()));
            },
          ),
          customTile(
            icon: Icons.school_sharp,
            title: 'Semesters',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SemesterView()));
            },
          ),
          customTile(
            icon: Icons.assignment,
            title: 'Enroll Courses',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StudentEnrolCourseView()));
            },
          ),
          customTile(
            icon: Icons.event,
            title: 'Enroll In Semesters',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StudentEnrollSemesterView()));
            },
          ),
          customTile(
            icon: Icons.class_,
            title: 'Courses',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CourseView()));
            },
          ),
          customTile(
            icon: Icons.library_books,
            title: 'Programs',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProgramView()));
            },
          ),
          customTile(
            icon: Icons.event_available,
            title: 'Course Allotments',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CourseAllotmentView()));
            },
          ),
          customTile(
            icon: Icons.how_to_reg,
            title: 'Attendance',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StudentAttendenceView()));
            },
          ),
          customTile(
            icon: Icons.description,
            title: 'Report',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const StudentView()));
            },
          ),
          customTile(
            icon: Icons.logout,
            title: 'LogOut',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
          ),
        ],
      ),
    );
  }

  Widget customTile({icon, title, required onTap}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: const TextStyle(fontFamily: TFont.latoRegular),
      ),
      onTap: onTap,
    );
  }
}
