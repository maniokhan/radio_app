import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class HelpSupportSettings extends StatefulWidget {
  const HelpSupportSettings({super.key});

  @override
  State<HelpSupportSettings> createState() => _HelpSupportSettingsState();
}

class _HelpSupportSettingsState extends State<HelpSupportSettings> {
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
          "Help & Support",
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
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(16),
        children: [],
      ),
    );
  }
}
