import 'package:edu_unity/res/constant/color/color.dart';
import 'package:edu_unity/res/constant/font/font.dart';
import 'package:edu_unity/res/constant/image/image_url.dart';
import 'package:edu_unity/res/widget/custom_textfield.dart';
import 'package:edu_unity/res/widget/round_buttton.dart';
import 'package:edu_unity/view/Dashboard/dashboard_view.dart';
import 'package:edu_unity/view/auth/sign_up_screen.dart';
import 'package:edu_unity/web_responsive.dart';
import 'package:flutter/material.dart';

import 'forgot_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Login'),
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
                Image.asset(
                  TImageUrl.imgLogo,
                  scale: 2,
                ),
                const SizedBox(height: 15),
                const Text(
                  'Welcome to',
                  style: TextStyle(
                      fontSize: 30,
                      color: TColors.darkBlue,
                      fontFamily: TFont.ralewayBold),
                ),
                const Text(
                  'Edu Unity Login',
                  style: TextStyle(fontSize: 35, fontFamily: TFont.ralewayBold),
                ),
                const SizedBox(height: 15),
                const CustomTextField(title: 'Email', hint: 'Enter Email'),
                const CustomTextField(
                    title: 'Password', hint: 'Enter Password', isPass: true),
                const SizedBox(height: 25),
                RoundButton(
                    title: 'Login',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DashboardView()));
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ForgotPasswordScreen()));
                      },
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: TColors.darkBlue,
                            fontFamily: TFont.latoRegular,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
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
                                builder: (context) => const SignUpScreen()));
                      },
                      child: const Text(
                        'Sign up',
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
