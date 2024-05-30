import 'package:edu_unity/Change_Password/reset_password.dart';
import 'package:edu_unity/res/widget/custom_textfield.dart';
import 'package:edu_unity/res/widget/round_botton.dart';
import 'package:edu_unity/view/Dashboard/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../res/constant/color/color.dart';

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
              child: Column(
            children: [
              SizedBox(height: 30),
              SvgPicture.asset('asset/icon/Reset Password.svg'),
              SizedBox(height: 30),
              const Text(
                'Reset your Password',
                style: TextStyle(
                    fontSize: 30,
                    color: TColors.darkBlue,
                    fontFamily: 'Lato-Regular',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              const Text(
                'Enter new password',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontFamily: 'Lato-Regular'),
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
                            builder: (cotext) => const DashboardView()));
                  }),
            ],
          )),
        ),
      ),
    );
  }
}
