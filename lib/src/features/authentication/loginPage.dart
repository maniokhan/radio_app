import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radio_app/src/constants/app_colors.dart';
import 'package:radio_app/src/constants/app_sizes.dart';
import 'package:radio_app/src/custom_widgets/common_scaffold.dart';
import 'package:radio_app/src/custom_widgets/common_textfield.dart';
import 'package:radio_app/src/custom_widgets/imageButton.dart';
import 'package:radio_app/src/features/authentication/signupPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          gapH18,
          Center(
            child: Image.asset(
              "assets/logos/app_logo.png",
              height: 100,
            ),
          ),
          gapH28,
          const Text(
            "Login",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: AppColors.white,
              letterSpacing: -0.33,
            ),
          ),
          const Text(
            "login with your email & password",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.white,
              letterSpacing: -0.33,
            ),
          ),
          gapH28,
          CommonTextfield(
            controller: emailController,
            hintText: 'Email or phone no',
          ),
          gapH12,
          CommonTextfield(
            controller: passwordController,
            hintText: 'Password',
            enablePasswordTextField: true,
            obscureText: true,
          ),
          gapH8,
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {},
              child: const Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primary,
                  letterSpacing: -0.33,
                ),
              ),
            ),
          ),
          gapH48,
          Material(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(5.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(5.0),
              onTap: () {},
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  //color: AppColors.primary,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                    letterSpacing: -0.33,
                  ),
                ),
              ),
            ),
          ),
          gapH8,
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {},
              child: const Text(
                "Login As Vista",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primary,
                  letterSpacing: -0.33,
                ),
              ),
            ),
          ),
          gapH8,
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "- - - - - - - - - - - -",
                style: TextStyle(color: AppColors.grey),
              ),
              Text(
                " OR ",
                style: TextStyle(
                  color: AppColors.white,
                  letterSpacing: -0.33,
                ),
              ),
              Text(
                "- - - - - - - - - - - -",
                style: TextStyle(color: AppColors.grey),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ImageButton(image: "assets/icons/google.png"),
                ImageButton(image: "assets/icons/facebook.png"),
                ImageButton(image: "assets/icons/apple.png"),
              ],
            ),
          ),
          gapH48,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account?",
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.white,
                  letterSpacing: -0.33,
                  fontWeight: FontWeight.w400,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  );
                },
                child: const Text(
                  " Sign up ",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.primary,
                    letterSpacing: -0.33,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
