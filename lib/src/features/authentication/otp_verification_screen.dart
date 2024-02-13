import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:radio_app/src/constants/app_colors.dart';
import 'package:radio_app/src/constants/app_sizes.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(16),
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: AppColors.white,
                ),
              ),
            ),
            Center(
              child: Image.asset(
                "assets/logos/otp_verification_logo.png",
                height: 100,
              ),
            ),
            gapH24,
            const Text(
              "OTP Verification ",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
                letterSpacing: -0.33,
              ),
            ),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white,
                  letterSpacing: -0.33,
                ),
                children: [
                  TextSpan(
                      text:
                          'Please Enter The 6-Digit Verification Code\nSent To '),
                  TextSpan(
                    text: '+234 13834 3433',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primary,
                      letterSpacing: -0.33,
                    ),
                  ),
                ],
              ),
            ),
            gapH20,
            OtpTextField(
              numberOfFields: 6,
              borderColor: AppColors.white,
              showCursor: false,
              styles: [
                TextStyle(
                  color: Colors.white,
                  letterSpacing: -0.33,
                ),
                TextStyle(
                  color: Colors.white,
                  letterSpacing: -0.33,
                ),
                TextStyle(
                  color: Colors.white,
                  letterSpacing: -0.33,
                ),
                TextStyle(
                  color: Colors.white,
                  letterSpacing: -0.33,
                ),
                TextStyle(
                  color: Colors.white,
                  letterSpacing: -0.33,
                ),
                TextStyle(
                  color: Colors.white,
                  letterSpacing: -0.33,
                ),
              ],
              focusedBorderColor: AppColors.primary,
              showFieldAsBox: true,

              onCodeChanged:
                  (String code) {}, //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}
