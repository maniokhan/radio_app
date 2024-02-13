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
            gapH28,
            Center(
              child: OtpTextField(
                numberOfFields: 6,
                borderColor: AppColors.white,
                fieldWidth: 45,

                showCursor: false,
                styles: const [
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
            ),
            gapH64,
            Center(
              child: Container(
                width: 96,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: const Color(0xff2F2F2F),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "00:00",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.0,
                    color: Color(0xff9A9A9A),
                  ),
                ),
              ),
            ),
            gapH24,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Didn't Received The Email?",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.white,
                    letterSpacing: -0.33,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    " Resend Again ",
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
            gapH64,
            Material(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(5.0),
              child: InkWell(
                borderRadius: BorderRadius.circular(5.0),
                onTap: () {
                  _showCustomDialog(context);
                },
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    //color: AppColors.primary,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Next",
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
            gapH18,
            Center(
              child: InkWell(
                onTap: () {},
                child: const Text(
                  "Wrong Number",
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.primary,
                    letterSpacing: -0.33,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showCustomDialog(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: Color(0xFF262525),
          child: Container(
            width: 290,
            height: 220,
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/sucess_icon.png',
                  width: 166,
                  height: 166,
                  fit: BoxFit.fill,
                ),
                gapH28,
                Text(
                  "Registration Successfully",
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColors.white,
                    letterSpacing: -0.33,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Please login with your created email and password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.grey,
                    letterSpacing: -0.33,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                    minimumSize: Size(290, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text(
                    'Button Text',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}



    // AlertDialog(
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(10.0),
    //   ),
    //   backgroundColor: Color(0xFF262525),
    //   content: Container(
    //     height: 200,
    //     width: 300,
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Image.asset(
    //           'assets/your_image.png', // Provide your image path here
    //           height: 50,
    //           width: 50,
    //         ),
    //         SizedBox(height: 20),
    //         Text(
    //           'Your Alert Text',
    //           style: TextStyle(
    //             color: Colors.white,
    //             fontSize: 18,
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    //   actions: <Widget>[
    //     Container(
    //       width: 290,
    //       height: 60,
    //       child: ElevatedButton(
    //         onPressed: () {
    //           // Add your button action here
    //         },
    //         child: Text(
    //           'Your Button Text',
    //           style: TextStyle(
    //             fontSize: 18,
    //           ),
    //         ),
    //       ),
    //     ),
    //   ],
    // );
 