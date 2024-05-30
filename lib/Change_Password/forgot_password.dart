import 'package:edu_unity/Change_Password/reset_password.dart';
import 'package:edu_unity/res/widget/custom_textfield.dart';
import 'package:edu_unity/res/widget/round_botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../res/constant/color/color.dart';
import '../res/constant/font/font.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              SvgPicture.asset('asset/icon/Forgot Password.svg'),
              SizedBox(height: 30),
              const Text(
                'Forgot Password',
                style: TextStyle(
                    fontSize: 30,
                    color: TColors.darkBlue,
                    fontFamily: TFont.ralewayBold),
              ),
              SizedBox(height: 10),
              const Text(
                'Enter your Email address to reset your password.',
                style: TextStyle(
                    color: Colors.grey, fontFamily: TFont.ralewayBold),
              ),
              const SizedBox(height: 30),
              const CustomTextField(title: 'Email', hint: 'Enter Email'),
              const SizedBox(height: 45),
              RoundButton(
                  title: 'Request Code',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (cotext) => const ResetPasswordScreen()));
                  }),
            ],
          )),
        ),
      ),
    );
  }
}
