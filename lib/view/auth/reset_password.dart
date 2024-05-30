import 'package:edu_unity/res/constant/image/image_url.dart';
import 'package:edu_unity/res/widget/custom_textfield.dart';
import 'package:edu_unity/res/widget/round_buttton.dart';
import 'package:edu_unity/view/auth/new_password.dart';
import 'package:edu_unity/web_responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../res/constant/color/color.dart';
import '../../res/constant/font/font.dart';

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
              child: WebResponsive(
            child: Column(
              children: [
                const SizedBox(height: 30),
                SvgPicture.asset(TImageUrl.iconOTP),
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
                const CustomTextField(
                    title: 'Code', hint: 'Enter 6 digits Code'),
                const SizedBox(height: 45),
                RoundButton(
                    title: 'Verify Code',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NewPasswordScreen()));
                    }),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '1:30',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: TFont.latoRegular,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Resend OTP',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: TColors.darkBlue,
                            fontFamily: TFont.latoRegular),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
