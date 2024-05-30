import 'package:edu_unity/Change_Password/new_password.dart';
import 'package:edu_unity/res/widget/custom_textfield.dart';
import 'package:edu_unity/res/widget/round_botton.dart';
import 'package:edu_unity/view/Dashboard/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../res/constant/color/color.dart';
import '../res/constant/font/font.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reset Password'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              const SizedBox(height: 30),
              SvgPicture.asset('asset/icon/Enter OTP.svg'),
              const SizedBox(height: 30),
              const Text(
                'Enter your OTP',
                style: TextStyle(
                    fontSize: 30,
                    color: TColors.darkBlue,
                    fontFamily: TFont.ralewayBold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Enter the code that we sent to your Email',
                style: TextStyle(
                    color: Colors.grey, fontFamily: TFont.ralewayBold),
              ),
              const SizedBox(height: 30),
              const CustomTextField(title: 'Code', hint: 'Enter 6 digits Code'),
              const SizedBox(height: 45),
              RoundButton(
                  title: 'Verify Code',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (cotext) => const NewPasswordScreen()));
                  }),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '1:30',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lato-Regular',
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Resend OTP',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: TColors.darkBlue,
                          fontFamily: 'Lato-Regular'),
                    ),
                  )
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}
