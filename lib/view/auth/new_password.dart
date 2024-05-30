import 'package:edu_unity/res/constant/font/font.dart';
import 'package:edu_unity/res/constant/image/image_url.dart';
import 'package:edu_unity/res/widget/custom_textfield.dart';
import 'package:edu_unity/res/widget/round_buttton.dart';
import 'package:edu_unity/view/Dashboard/dashboard_view.dart';
import 'package:edu_unity/web_responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../res/constant/color/color.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Password'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Center(
              child: WebResponsive(
            child: Column(
              children: [
                const SizedBox(height: 30),
                SvgPicture.asset(TImageUrl.iconReset),
                const SizedBox(height: 30),
                const Text(
                  'Reset your Password',
                  style: TextStyle(
                      fontSize: 30,
                      color: TColors.darkBlue,
                      fontFamily: TFont.latoRegular,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Enter new password',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontFamily: TFont.latoRegular),
                ),
                const SizedBox(height: 30),
                const CustomTextField(
                    title: 'Password', hint: 'Enter Password', isPass: true),
                const CustomTextField(
                    title: 'Confirm Password',
                    hint: 'Enter Confirm Password',
                    isPass: true),
                const SizedBox(height: 45),
                RoundButton(
                    title: 'Change Password',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DashboardView()));
                    }),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
