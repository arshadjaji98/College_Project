import 'package:edu_unity/Sign%20Up/sign_up_screen.dart';
import 'package:edu_unity/res/constant/color/color.dart';
import 'package:edu_unity/res/constant/font/font.dart';
import 'package:edu_unity/res/widget/custom_textfield.dart';
import 'package:edu_unity/res/widget/round_botton.dart';
import 'package:edu_unity/view/Dashboard/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../Change_Password/forgot_password.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('asset/image/logo.png'),
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
                            builder: (cotext) => const DashboardView()));
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPasswordScreen()));
                    },
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: TColors.darkBlue,
                          fontFamily: 'Lato-Regular',
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lato-Regular',
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                    child: Text(
                      'Signup',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: TColors.darkBlue,
                          fontFamily: 'Lato-Regular'),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
