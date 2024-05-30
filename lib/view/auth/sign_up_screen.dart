import 'package:edu_unity/res/constant/color/color.dart';
import 'package:edu_unity/res/constant/image/image_url.dart';
import 'package:edu_unity/res/widget/custom_textfield.dart';
import 'package:edu_unity/res/widget/round_buttton.dart';
import 'package:edu_unity/view/Dashboard/dashboard_view.dart';
import 'package:edu_unity/view/auth/login_screen.dart';
import 'package:edu_unity/web_responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../res/constant/font/font.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: WebResponsive(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                SvgPicture.asset(TImageUrl.iconSignUp),
                const SizedBox(height: 15),
                const Text(
                  'Welcome to',
                  style: TextStyle(
                      fontSize: 30,
                      color: TColors.darkBlue,
                      fontFamily: TFont.ralewayBold),
                ),
                const Text(
                  'Edu Unity Sign up',
                  style: TextStyle(fontSize: 35, fontFamily: TFont.ralewayBold),
                ),
                const SizedBox(height: 15),
                const CustomTextField(title: 'Name', hint: 'Full Name'),
                const CustomTextField(title: 'Email', hint: 'Enter Email'),
                const CustomTextField(
                    title: 'Password', hint: 'Enter Password', isPass: true),
                const CustomTextField(
                    title: 'Confirm Password',
                    hint: 'Enter Confirm Password',
                    isPass: true),
                const SizedBox(height: 25),
                RoundButton(
                    title: 'Sign Up',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DashboardView()));
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: TFont.latoRegular,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      child: const Text(
                        'Login',
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
          ),
        ),
      ),
    );
  }
}
