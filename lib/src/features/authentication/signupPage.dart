import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:radio_app/src/constants/app_colors.dart';
import 'package:radio_app/src/constants/app_sizes.dart';
import 'package:radio_app/src/custom_widgets/common_dropdown.dart';
import 'package:radio_app/src/custom_widgets/common_scaffold.dart';
import 'package:radio_app/src/custom_widgets/common_textfield.dart';
import 'package:radio_app/src/custom_widgets/imageButton.dart';
import 'package:radio_app/src/features/authentication/loginPage.dart';
import 'package:radio_app/src/features/authentication/otp_verification_screen.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  late TextEditingController emailController;
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController passwordController;
  late TextEditingController confirmpPasswordController;
  late TextEditingController phoneNumberController;

  String? selectedItem;
  String? selectedGenderItem;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmpPasswordController = TextEditingController();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    phoneNumberController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmpPasswordController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    phoneNumberController.dispose();
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
            "Register",
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
          Row(
            children: [
              Expanded(
                child: CommonTextfield(
                  controller: firstNameController,
                  hintText: 'First Name',
                ),
              ),
              gapW20,
              Expanded(
                child: CommonTextfield(
                  controller: lastNameController,
                  hintText: 'Last Name',
                ),
              ),
            ],
          ),
          gapH12,
          CommonTextfield(
            controller: emailController,
            hintText: 'Email',
          ),
          gapH12,
          PhoneTextField(
              controller: phoneNumberController,
              onPhoneNumberChanged: (str) {}),
          gapH12,
          CommonDropdown(
            hintText: 'Select Gender',
            items: const [
              'Male',
              'Female',
            ],
            value: selectedGenderItem,
            onChanged: (newValue) {
              setState(() {
                selectedGenderItem = newValue!;
              });
            },
          ),
          gapH12,
          CommonDropdown(
            hintText: 'Select user type',
            items: const [
              'Item 1',
              'Item 2',
              'Item 3',
            ],
            value: selectedItem,
            onChanged: (newValue) {
              setState(() {
                selectedItem = newValue!;
              });
            },
          ),
          gapH12,
          CommonTextfield(
            controller: passwordController,
            hintText: 'Password',
            enablePasswordTextField: true,
            obscureText: true,
          ),
          gapH12,
          CommonTextfield(
            controller: confirmpPasswordController,
            hintText: 'Confirm Password',
            enablePasswordTextField: true,
            obscureText: true,
          ),
          gapH48,
          Material(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(5.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(5.0),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OtpVerificationScreen()));
              },
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  //  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Sign up",
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
          gapH16,
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
                "You Have Already An Account?",
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
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: const Text(
                  " Login ",
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

class PhoneTextField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onPhoneNumberChanged;

  PhoneTextField(
      {required this.controller, required this.onPhoneNumberChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey),
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: EdgeInsets.only(left: 10.0),
      child: InternationalPhoneNumberInput(
        textStyle: const TextStyle(
          color: Colors.white,
          letterSpacing: -0.33,
        ),
        searchBoxDecoration: InputDecoration(
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.grey,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.white,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          hintText: "Search by country name or dial code",
          hintStyle: const TextStyle(
            color: AppColors.grey,
            letterSpacing: -0.33,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 8, vertical: 12.0),
        ),
        selectorConfig: SelectorConfig(
          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
        ),
        onInputChanged: (PhoneNumber number) {
          onPhoneNumberChanged(number.phoneNumber!);
        },
        cursorColor: Colors.white,
        selectorTextStyle: TextStyle(
          color: Colors.white,
          letterSpacing: -0.33,
        ),
        textFieldController: controller,
        inputDecoration: const InputDecoration(
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.grey,
              width: 0.5,
            ),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.white,
              width: 0.5,
            ),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0)),
          ),
          hintText: "Enter your phone no",
          hintStyle: TextStyle(
            color: AppColors.grey,
            letterSpacing: -0.33,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 8, vertical: 12.0),
        ),
      ),
    );
  }
}
