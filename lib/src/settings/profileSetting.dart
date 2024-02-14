import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';
import '../custom_widgets/common_dropdown.dart';
import '../custom_widgets/common_textfield.dart';
import '../features/authentication/signupPage.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({super.key});

  @override
  State<ProfileSetting> createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  late TextEditingController emailController;
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController passwordController;
  late TextEditingController confirmpPasswordController;
  late TextEditingController phoneNumberController;

  String? selectedItem;
  String? selectedGenderItem;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: AppColors.white,
          ),
        ),
        backgroundColor: AppColors.background,
        title: Text(
          "Profile Settings",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: AppColors.white,
            letterSpacing: -0.33,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          gapH18,
          Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/logos/app_logo.png",
                  height: 200,
                ),
                gapH8,
                Text(
                  'Dennis',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, ),
                )
              ],
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
          Container(
            height: 55,
            decoration: BoxDecoration(
              //  color: AppColors.primary,
              borderRadius: BorderRadius.circular(5.0),
            ),
            alignment: Alignment.center,
            child: const Text(
              "Update",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
                letterSpacing: -0.33,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
